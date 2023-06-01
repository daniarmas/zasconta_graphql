import 'package:graphql_flutter/graphql_flutter.dart';

final messageSubscription = gql(r'''
subscription Messages {
    messages {
        id
        createdAt
        content
        chatID
        usuarioID
    }
}
''');


