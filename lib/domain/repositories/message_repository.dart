import 'package:zasconta_graphql/domain/models/message_model.dart';

abstract class MessageRepository {
  Future<void> connect();
  Future<void> close();
  Stream<MessageModel?> get streamMessage;
}
