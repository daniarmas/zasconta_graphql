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

  late GraphQLClient client;
  Stream<MessageModel?> _subscription = const Stream.empty();

  MessageDatasourceImpl(this.graphQLConfiguration) {
    client = graphQLConfiguration.clientToSubscription(
        authToken: const String.fromEnvironment('AUTH_TOKEN'));
  }

  @override
  Future<void> close() async {}

  @override
  Future<void> connect() async {
    final SubscriptionOptions options =
        SubscriptionOptions(document: messageSubscription);
    _subscription = client.subscribe(options).map(
      (response) {
        final message = response.data!['messages'];
        return MessageModel.fromJson(message);
      },
    );
  }

  @override
  // TODO: implement stream
  Stream<MessageModel?> get streamMessage => _subscription;
}
