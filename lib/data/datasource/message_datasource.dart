import 'dart:async';

import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:zasconta_graphql/core/graphql/graphql_client.dart';
import 'package:zasconta_graphql/data/graphql/subscriptions/message_subscription.dart';

abstract class MessageDatasource {
  Future<void> connect();
  Future<void> close();
}

class MessageDatasourceImpl implements MessageDatasource {
  final GraphQLConfiguration graphQLConfiguration;
  late GraphQLClient client;
  late StreamSubscription<QueryResult<Object?>> _subscription;

  MessageDatasourceImpl(this.graphQLConfiguration) {
    client = graphQLConfiguration.clientToSubscription(
        authToken: const String.fromEnvironment('AUTH_TOKEN'));
  }

  @override
  Future<void> close() async {
    _subscription.cancel();
  }

  @override
  Future<void> connect() async {
    final SubscriptionOptions options =
        SubscriptionOptions(document: messageSubscription);
    final _subscription = client.subscribe(options).listen((result) {
      if (result.hasException) {
        print(result.exception.toString());
        return;
      }
      if (result.isLoading) {
        print('awaiting results');
        return;
      }
      print('New Review: ${result.data}');
    });
  }
}
