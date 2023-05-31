abstract class MessageDatasource {
  Future<void> connect();
  Future<void> close();
  Stream<MessageModel> get streamMessage;
}