import 'dart:async';

import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:zasconta_graphql/core/graphql/graphql_client.dart';
import 'package:zasconta_graphql/data/graphql/subscriptions/message_subscription.dart';
import 'package:zasconta_graphql/domain/models/time_model.dart';

abstract class MessageDatasource {
  Future<void> connect();
  Future<void> close();
  Stream<TimeModel?> get streamMessage;
}

@Injectable(as: MessageDatasource)
class MessageDatasourceImpl implements MessageDatasource {
  final GraphQLConfiguration graphQLConfiguration;
  Stream<TimeModel?> _subscription = const Stream.empty();

  late GraphQLClient client;

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
    client.subscribe(options).listen((response) {
      final data = response.data;
      if (data != null) {
        final message = response.data!['currentTime'];
        print(TimeModel.fromJson(message));
      }
    });
  }

  @override
  Stream<TimeModel?> get streamMessage => _subscription;
}
