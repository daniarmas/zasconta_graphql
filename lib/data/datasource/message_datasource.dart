abstract class MessageDatasource {
  Future<void> connect();
  Future<void> close();
  // Stream<MessageModel> get streamMessage;
}

class MessageDatasourceImpl implements MessageDatasource {
  @override
  Future<void> close() {
    // TODO: implement close
    throw UnimplementedError();
  }

  @override
  Future<void> connect() {
    // TODO: implement connect
    throw UnimplementedError();
  }

  // @override
  // // TODO: implement streamMessage
  // Stream get streamMessage => Stream.empty();
}
