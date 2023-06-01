import 'dart:async';

import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:zasconta_graphql/core/graphql/graphql_client.dart';
import 'package:zasconta_graphql/data/graphql/subscriptions/message_subscription.dart';
import 'package:zasconta_graphql/domain/models/message_model.dart';

abstract class MessageDatasource {
  Future<void> connect();
  Future<void> close();
  Stream<MessageModel?> get streamMessage;
}

@Injectable(as: MessageDatasource)
class MessageDatasourceImpl implements MessageDatasource {
  final GraphQLConfiguration graphQLConfiguration;
  late StreamController<MessageModel?> _messageController;
  late StreamSubscription<QueryResult> _subscription;

  late GraphQLClient client;

  MessageDatasourceImpl(this.graphQLConfiguration) {
    _messageController = StreamController<MessageModel?>.broadcast();

    client = graphQLConfiguration.clientToSubscription(
        authToken: const String.fromEnvironment('AUTH_TOKEN'));
  }

  @override
  Future<void> close() async {
    await _subscription.cancel();
  }

  @override
  Future<void> connect() async {
    final SubscriptionOptions options =
        SubscriptionOptions(document: messageSubscription);

    _subscription = client.subscribe(options).listen((response) {
      final data = response.data;
      if (data != null) {
        final data = response.data!['messages'];
        final message = MessageModel.fromJson(data);
        _messageController.add(message);
      }
    });
  }

  @override
  Stream<MessageModel?> get streamMessage => _messageController.stream;
}
