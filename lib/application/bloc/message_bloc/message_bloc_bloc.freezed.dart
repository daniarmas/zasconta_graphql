// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MessageBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
    required TResult Function() close,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connect,
    TResult? Function()? close,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? close,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Connect value) connect,
    required TResult Function(_Close value) close,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Connect value)? connect,
    TResult? Function(_Close value)? close,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Connect value)? connect,
    TResult Function(_Close value)? close,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageBlocEventCopyWith<$Res> {
  factory $MessageBlocEventCopyWith(
          MessageBlocEvent value, $Res Function(MessageBlocEvent) then) =
      _$MessageBlocEventCopyWithImpl<$Res, MessageBlocEvent>;
}

/// @nodoc
class _$MessageBlocEventCopyWithImpl<$Res, $Val extends MessageBlocEvent>
    implements $MessageBlocEventCopyWith<$Res> {
  _$MessageBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ConnectCopyWith<$Res> {
  factory _$$_ConnectCopyWith(
          _$_Connect value, $Res Function(_$_Connect) then) =
      __$$_ConnectCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ConnectCopyWithImpl<$Res>
    extends _$MessageBlocEventCopyWithImpl<$Res, _$_Connect>
    implements _$$_ConnectCopyWith<$Res> {
  __$$_ConnectCopyWithImpl(_$_Connect _value, $Res Function(_$_Connect) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Connect implements _Connect {
  const _$_Connect();

  @override
  String toString() {
    return 'MessageBlocEvent.connect()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Connect);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
    required TResult Function() close,
  }) {
    return connect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connect,
    TResult? Function()? close,
  }) {
    return connect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? close,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Connect value) connect,
    required TResult Function(_Close value) close,
  }) {
    return connect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Connect value)? connect,
    TResult? Function(_Close value)? close,
  }) {
    return connect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Connect value)? connect,
    TResult Function(_Close value)? close,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect(this);
    }
    return orElse();
  }
}

abstract class _Connect implements MessageBlocEvent {
  const factory _Connect() = _$_Connect;
}

/// @nodoc
abstract class _$$_CloseCopyWith<$Res> {
  factory _$$_CloseCopyWith(_$_Close value, $Res Function(_$_Close) then) =
      __$$_CloseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CloseCopyWithImpl<$Res>
    extends _$MessageBlocEventCopyWithImpl<$Res, _$_Close>
    implements _$$_CloseCopyWith<$Res> {
  __$$_CloseCopyWithImpl(_$_Close _value, $Res Function(_$_Close) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Close implements _Close {
  const _$_Close();

  @override
  String toString() {
    return 'MessageBlocEvent.close()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Close);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
    required TResult Function() close,
  }) {
    return close();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connect,
    TResult? Function()? close,
  }) {
    return close?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? close,
    required TResult orElse(),
  }) {
    if (close != null) {
      return close();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Connect value) connect,
    required TResult Function(_Close value) close,
  }) {
    return close(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Connect value)? connect,
    TResult? Function(_Close value)? close,
  }) {
    return close?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Connect value)? connect,
    TResult Function(_Close value)? close,
    required TResult orElse(),
  }) {
    if (close != null) {
      return close(this);
    }
    return orElse();
  }
}

abstract class _Close implements MessageBlocEvent {
  const factory _Close() = _$_Close;
}

/// @nodoc
mixin _$MessageBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() connected,
    required TResult Function() closed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? connected,
    TResult? Function()? closed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? connected,
    TResult Function()? closed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Connected value) connected,
    required TResult Function(_Closed value) closed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Connected value)? connected,
    TResult? Function(_Closed value)? closed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Connected value)? connected,
    TResult Function(_Closed value)? closed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageBlocStateCopyWith<$Res> {
  factory $MessageBlocStateCopyWith(
          MessageBlocState value, $Res Function(MessageBlocState) then) =
      _$MessageBlocStateCopyWithImpl<$Res, MessageBlocState>;
}

/// @nodoc
class _$MessageBlocStateCopyWithImpl<$Res, $Val extends MessageBlocState>
    implements $MessageBlocStateCopyWith<$Res> {
  _$MessageBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$MessageBlocStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'MessageBlocState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() connected,
    required TResult Function() closed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? connected,
    TResult? Function()? closed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? connected,
    TResult Function()? closed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Connected value) connected,
    required TResult Function(_Closed value) closed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Connected value)? connected,
    TResult? Function(_Closed value)? closed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Connected value)? connected,
    TResult Function(_Closed value)? closed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements MessageBlocState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_ConnectedCopyWith<$Res> {
  factory _$$_ConnectedCopyWith(
          _$_Connected value, $Res Function(_$_Connected) then) =
      __$$_ConnectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ConnectedCopyWithImpl<$Res>
    extends _$MessageBlocStateCopyWithImpl<$Res, _$_Connected>
    implements _$$_ConnectedCopyWith<$Res> {
  __$$_ConnectedCopyWithImpl(
      _$_Connected _value, $Res Function(_$_Connected) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Connected implements _Connected {
  const _$_Connected();

  @override
  String toString() {
    return 'MessageBlocState.connected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Connected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() connected,
    required TResult Function() closed,
  }) {
    return connected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? connected,
    TResult? Function()? closed,
  }) {
    return connected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? connected,
    TResult Function()? closed,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Connected value) connected,
    required TResult Function(_Closed value) closed,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Connected value)? connected,
    TResult? Function(_Closed value)? closed,
  }) {
    return connected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Connected value)? connected,
    TResult Function(_Closed value)? closed,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class _Connected implements MessageBlocState {
  const factory _Connected() = _$_Connected;
}

/// @nodoc
abstract class _$$_ClosedCopyWith<$Res> {
  factory _$$_ClosedCopyWith(_$_Closed value, $Res Function(_$_Closed) then) =
      __$$_ClosedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClosedCopyWithImpl<$Res>
    extends _$MessageBlocStateCopyWithImpl<$Res, _$_Closed>
    implements _$$_ClosedCopyWith<$Res> {
  __$$_ClosedCopyWithImpl(_$_Closed _value, $Res Function(_$_Closed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Closed implements _Closed {
  const _$_Closed();

  @override
  String toString() {
    return 'MessageBlocState.closed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Closed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() connected,
    required TResult Function() closed,
  }) {
    return closed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? connected,
    TResult? Function()? closed,
  }) {
    return closed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? connected,
    TResult Function()? closed,
    required TResult orElse(),
  }) {
    if (closed != null) {
      return closed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Connected value) connected,
    required TResult Function(_Closed value) closed,
  }) {
    return closed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Connected value)? connected,
    TResult? Function(_Closed value)? closed,
  }) {
    return closed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Connected value)? connected,
    TResult Function(_Closed value)? closed,
    required TResult orElse(),
  }) {
    if (closed != null) {
      return closed(this);
    }
    return orElse();
  }
}

abstract class _Closed implements MessageBlocState {
  const factory _Closed() = _$_Closed;
}
