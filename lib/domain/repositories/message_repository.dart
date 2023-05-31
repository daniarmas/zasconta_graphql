abstract class MessageRepository {
  Future<void> connect();
  Future<void> close();
  Stream<MessageModel> get streamMessage;
}