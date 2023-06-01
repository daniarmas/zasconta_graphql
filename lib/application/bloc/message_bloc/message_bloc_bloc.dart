import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:zasconta_graphql/domain/models/message_model.dart';
import 'package:zasconta_graphql/domain/repositories/message_repository.dart';

part 'message_bloc_event.dart';
part 'message_bloc_state.dart';
part 'message_bloc_bloc.freezed.dart';

@injectable
class MessageBloc extends Bloc<MessageBlocEvent, MessageBlocState> {
  final _messageController = StreamController<MessageModel>.broadcast();
  Stream<MessageModel> get messageStream => _messageController.stream;
  final MessageRepository messageRepository;

  MessageBloc(this.messageRepository) : super(const _Closed()) {
    messageRepository.streamMessage.listen((message) {
      _messageController.add(message);
    });

    on<MessageBlocEvent>((event, emit) async {
      await event.when(
        connect: () async {
          emit(const _Loading());
          await messageRepository.connect();
          emit(const _Connected());
        },
        close: () async {
          emit(const _Loading());
          await messageRepository.close();
          emit(const _Closed());
        },
      );
    });
  }
}
