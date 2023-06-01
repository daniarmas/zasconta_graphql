import 'package:zasconta_graphql/domain/models/message_model.dart';
import 'package:zasconta_graphql/domain/models/time_model.dart';

abstract class MessageRepository {
  Future<void> connect();
  Future<void> close();
  Stream<TimeModel?> get streamMessage;
}
