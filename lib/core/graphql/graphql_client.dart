import 'package:flutter/material.dart';
import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';

@injectable
class GraphQLConfiguration {
  static HttpLink httpLink = HttpLink(
    'http://5.189.139.14:8084/graphql',
  );
/*   static HttpLink httpLink = HttpLink(
    'http://10.0.2.2:8084/graphql',
  ); */

  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      link: httpLink,
      cache: GraphQLCache(),
    ),
  );

  GraphQLClient clientToQuery({String auth = ''}) {
    Link link;
    if (auth != '') {
      final authLink = AuthLink(
        getToken: () async => 'Bearer $auth',
      );
      link = authLink.concat(httpLink);
    } else {
      link = httpLink;
    }
    return GraphQLClient(
      link: link,
      cache: GraphQLCache(),
    );
  }

  GraphQLClient clientToSubscription({String authToken = ''}) {
    Link link;
    if (authToken != '') {
      final authLink = HttpLink(
        'http://5.189.139.14:8084/graphql',
        defaultHeaders: {'Authorization': 'Bearer $authToken'},
      );
      link = authLink.concat(httpLink);
    } else {
      link = httpLink;
    }
    WebSocketLink webSocketLink = WebSocketLink(
      'http://5.189.139.14:8084/graphql',
      config: SocketClientConfig(
        autoReconnect: true,
        inactivityTimeout: const Duration(seconds: 30),
        initialPayload: {'Authorization': 'Bearer $authToken'},
      ),
      subProtocol: GraphQLProtocol.graphqlTransportWs,
    );
    link = Link.split((request) => request.isSubscription, webSocketLink, link);
    return GraphQLClient(
      cache:
          GraphQLCache(), //OptimisticCache(dataIdFromObject: typenameDataIdFromObject),
      link: link,
    );
  }
}
