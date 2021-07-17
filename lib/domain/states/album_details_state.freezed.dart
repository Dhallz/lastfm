// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'album_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AlbumDetailsStateTearOff {
  const _$AlbumDetailsStateTearOff();

  _AlbumDetailsState call({AlbumDetails album = const AlbumDetails()}) {
    return _AlbumDetailsState(
      album: album,
    );
  }
}

/// @nodoc
const $AlbumDetailsState = _$AlbumDetailsStateTearOff();

/// @nodoc
mixin _$AlbumDetailsState {
  AlbumDetails get album => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AlbumDetailsStateCopyWith<AlbumDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumDetailsStateCopyWith<$Res> {
  factory $AlbumDetailsStateCopyWith(
          AlbumDetailsState value, $Res Function(AlbumDetailsState) then) =
      _$AlbumDetailsStateCopyWithImpl<$Res>;
  $Res call({AlbumDetails album});

  $AlbumDetailsCopyWith<$Res> get album;
}

/// @nodoc
class _$AlbumDetailsStateCopyWithImpl<$Res>
    implements $AlbumDetailsStateCopyWith<$Res> {
  _$AlbumDetailsStateCopyWithImpl(this._value, this._then);

  final AlbumDetailsState _value;
  // ignore: unused_field
  final $Res Function(AlbumDetailsState) _then;

  @override
  $Res call({
    Object? album = freezed,
  }) {
    return _then(_value.copyWith(
      album: album == freezed
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as AlbumDetails,
    ));
  }

  @override
  $AlbumDetailsCopyWith<$Res> get album {
    return $AlbumDetailsCopyWith<$Res>(_value.album, (value) {
      return _then(_value.copyWith(album: value));
    });
  }
}

/// @nodoc
abstract class _$AlbumDetailsStateCopyWith<$Res>
    implements $AlbumDetailsStateCopyWith<$Res> {
  factory _$AlbumDetailsStateCopyWith(
          _AlbumDetailsState value, $Res Function(_AlbumDetailsState) then) =
      __$AlbumDetailsStateCopyWithImpl<$Res>;
  @override
  $Res call({AlbumDetails album});

  @override
  $AlbumDetailsCopyWith<$Res> get album;
}

/// @nodoc
class __$AlbumDetailsStateCopyWithImpl<$Res>
    extends _$AlbumDetailsStateCopyWithImpl<$Res>
    implements _$AlbumDetailsStateCopyWith<$Res> {
  __$AlbumDetailsStateCopyWithImpl(
      _AlbumDetailsState _value, $Res Function(_AlbumDetailsState) _then)
      : super(_value, (v) => _then(v as _AlbumDetailsState));

  @override
  _AlbumDetailsState get _value => super._value as _AlbumDetailsState;

  @override
  $Res call({
    Object? album = freezed,
  }) {
    return _then(_AlbumDetailsState(
      album: album == freezed
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as AlbumDetails,
    ));
  }
}

/// @nodoc

class _$_AlbumDetailsState implements _AlbumDetailsState {
  const _$_AlbumDetailsState({this.album = const AlbumDetails()});

  @JsonKey(defaultValue: const AlbumDetails())
  @override
  final AlbumDetails album;

  @override
  String toString() {
    return 'AlbumDetailsState(album: $album)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AlbumDetailsState &&
            (identical(other.album, album) ||
                const DeepCollectionEquality().equals(other.album, album)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(album);

  @JsonKey(ignore: true)
  @override
  _$AlbumDetailsStateCopyWith<_AlbumDetailsState> get copyWith =>
      __$AlbumDetailsStateCopyWithImpl<_AlbumDetailsState>(this, _$identity);
}

abstract class _AlbumDetailsState implements AlbumDetailsState {
  const factory _AlbumDetailsState({AlbumDetails album}) = _$_AlbumDetailsState;

  @override
  AlbumDetails get album => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AlbumDetailsStateCopyWith<_AlbumDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
