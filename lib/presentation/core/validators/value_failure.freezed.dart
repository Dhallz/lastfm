// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'value_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  Empty<T> empty<T>({required T failedMessage}) {
    return Empty<T>(
      failedMessage: failedMessage,
    );
  }

  DifferentInput<T> onlySpecialChar<T>({required T failedMessage}) {
    return DifferentInput<T>(
      failedMessage: failedMessage,
    );
  }
}

/// @nodoc
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  T get failedMessage => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedMessage) empty,
    required TResult Function(T failedMessage) onlySpecialChar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedMessage)? empty,
    TResult Function(T failedMessage)? onlySpecialChar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(DifferentInput<T> value) onlySpecialChar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(DifferentInput<T> value)? onlySpecialChar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedMessage});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object? failedMessage = freezed,
  }) {
    return _then(_value.copyWith(
      failedMessage: failedMessage == freezed
          ? _value.failedMessage
          : failedMessage // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
abstract class $EmptyCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $EmptyCopyWith(Empty<T> value, $Res Function(Empty<T>) then) =
      _$EmptyCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedMessage});
}

/// @nodoc
class _$EmptyCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $EmptyCopyWith<T, $Res> {
  _$EmptyCopyWithImpl(Empty<T> _value, $Res Function(Empty<T>) _then)
      : super(_value, (v) => _then(v as Empty<T>));

  @override
  Empty<T> get _value => super._value as Empty<T>;

  @override
  $Res call({
    Object? failedMessage = freezed,
  }) {
    return _then(Empty<T>(
      failedMessage: failedMessage == freezed
          ? _value.failedMessage
          : failedMessage // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$Empty<T> implements Empty<T> {
  const _$Empty({required this.failedMessage});

  @override
  final T failedMessage;

  @override
  String toString() {
    return 'ValueFailure<$T>.empty(failedMessage: $failedMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Empty<T> &&
            (identical(other.failedMessage, failedMessage) ||
                const DeepCollectionEquality()
                    .equals(other.failedMessage, failedMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedMessage);

  @JsonKey(ignore: true)
  @override
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      _$EmptyCopyWithImpl<T, Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedMessage) empty,
    required TResult Function(T failedMessage) onlySpecialChar,
  }) {
    return empty(failedMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedMessage)? empty,
    TResult Function(T failedMessage)? onlySpecialChar,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(failedMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(DifferentInput<T> value) onlySpecialChar,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(DifferentInput<T> value)? onlySpecialChar,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ValueFailure<T> {
  const factory Empty({required T failedMessage}) = _$Empty<T>;

  @override
  T get failedMessage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DifferentInputCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $DifferentInputCopyWith(
          DifferentInput<T> value, $Res Function(DifferentInput<T>) then) =
      _$DifferentInputCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedMessage});
}

/// @nodoc
class _$DifferentInputCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $DifferentInputCopyWith<T, $Res> {
  _$DifferentInputCopyWithImpl(
      DifferentInput<T> _value, $Res Function(DifferentInput<T>) _then)
      : super(_value, (v) => _then(v as DifferentInput<T>));

  @override
  DifferentInput<T> get _value => super._value as DifferentInput<T>;

  @override
  $Res call({
    Object? failedMessage = freezed,
  }) {
    return _then(DifferentInput<T>(
      failedMessage: failedMessage == freezed
          ? _value.failedMessage
          : failedMessage // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$DifferentInput<T> implements DifferentInput<T> {
  const _$DifferentInput({required this.failedMessage});

  @override
  final T failedMessage;

  @override
  String toString() {
    return 'ValueFailure<$T>.onlySpecialChar(failedMessage: $failedMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DifferentInput<T> &&
            (identical(other.failedMessage, failedMessage) ||
                const DeepCollectionEquality()
                    .equals(other.failedMessage, failedMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedMessage);

  @JsonKey(ignore: true)
  @override
  $DifferentInputCopyWith<T, DifferentInput<T>> get copyWith =>
      _$DifferentInputCopyWithImpl<T, DifferentInput<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedMessage) empty,
    required TResult Function(T failedMessage) onlySpecialChar,
  }) {
    return onlySpecialChar(failedMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedMessage)? empty,
    TResult Function(T failedMessage)? onlySpecialChar,
    required TResult orElse(),
  }) {
    if (onlySpecialChar != null) {
      return onlySpecialChar(failedMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(DifferentInput<T> value) onlySpecialChar,
  }) {
    return onlySpecialChar(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(DifferentInput<T> value)? onlySpecialChar,
    required TResult orElse(),
  }) {
    if (onlySpecialChar != null) {
      return onlySpecialChar(this);
    }
    return orElse();
  }
}

abstract class DifferentInput<T> implements ValueFailure<T> {
  const factory DifferentInput({required T failedMessage}) =
      _$DifferentInput<T>;

  @override
  T get failedMessage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $DifferentInputCopyWith<T, DifferentInput<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
