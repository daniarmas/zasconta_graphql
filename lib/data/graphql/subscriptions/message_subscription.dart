import 'package:graphql_flutter/graphql_flutter.dart';

final messageSubscription = gql(r'''
subscription {
  currentTime {
    unixTime
    timeStamp
  }
}
''');


