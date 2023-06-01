import 'package:injectable/injectable.dart';
import 'package:zasconta_graphql/data/datasource/message_datasource.dart';
import 'package:zasconta_graphql/domain/models/message_model.dart';
import 'package:zasconta_graphql/domain/models/time_model.dart';
import 'package:zasconta_graphql/domain/repositories/message_repository.dart';

@Injectable(as: MessageRepository)
class MessageRepositoryImpl implements MessageRepository {
  final MessageDatasource messageDatasource;

  MessageRepositoryImpl(this.messageDatasource);

  @override
  Future<void> close() {
    throw UnimplementedError();
  }

  @override
  Future<void> connect() async {
    messageDatasource.connect();
  }

  @override
  Stream<TimeModel?> get streamMessage =>
      messageDatasource.streamMessage;
}
