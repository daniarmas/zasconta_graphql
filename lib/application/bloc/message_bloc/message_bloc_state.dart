part of 'message_bloc_bloc.dart';

@freezed
class MessageBlocState with _$MessageBlocState {
  const factory MessageBlocState.loading() = _Loading;
  const factory MessageBlocState.connected() = _Connected;
  const factory MessageBlocState.closed() = _Closed;
}
