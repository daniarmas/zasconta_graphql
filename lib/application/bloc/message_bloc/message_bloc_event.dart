part of 'message_bloc_bloc.dart';

@freezed
class MessageBlocEvent with _$MessageBlocEvent {
  const factory MessageBlocEvent.connect() = _Connect;
  const factory MessageBlocEvent.close() = _Close;
}