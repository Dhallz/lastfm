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

  _AlbumDetailsState call({AlbumDetails albumDetails = const AlbumDetails()}) {
    return _AlbumDetailsState(
      albumDetails: albumDetails,
    );
  }
}

/// @nodoc
const $AlbumDetailsState = _$AlbumDetailsStateTearOff();

/// @nodoc
mixin _$AlbumDetailsState {
  AlbumDetails get albumDetails => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AlbumDetailsStateCopyWith<AlbumDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumDetailsStateCopyWith<$Res> {
  factory $AlbumDetailsStateCopyWith(
          AlbumDetailsState value, $Res Function(AlbumDetailsState) then) =
      _$AlbumDetailsStateCopyWithImpl<$Res>;
  $Res call({AlbumDetails albumDetails});

  $AlbumDetailsCopyWith<$Res> get albumDetails;
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
    Object? albumDetails = freezed,
  }) {
    return _then(_value.copyWith(
      albumDetails: albumDetails == freezed
          ? _value.albumDetails
          : albumDetails // ignore: cast_nullable_to_non_nullable
              as AlbumDetails,
    ));
  }

  @override
  $AlbumDetailsCopyWith<$Res> get albumDetails {
    return $AlbumDetailsCopyWith<$Res>(_value.albumDetails, (value) {
      return _then(_value.copyWith(albumDetails: value));
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
  $Res call({AlbumDetails albumDetails});

  @override
  $AlbumDetailsCopyWith<$Res> get albumDetails;
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
    Object? albumDetails = freezed,
  }) {
    return _then(_AlbumDetailsState(
      albumDetails: albumDetails == freezed
          ? _value.albumDetails
          : albumDetails // ignore: cast_nullable_to_non_nullable
              as AlbumDetails,
    ));
  }
}

/// @nodoc

class _$_AlbumDetailsState implements _AlbumDetailsState {
  const _$_AlbumDetailsState({this.albumDetails = const AlbumDetails()});

  @JsonKey(defaultValue: const AlbumDetails())
  @override
  final AlbumDetails albumDetails;

  @override
  String toString() {
    return 'AlbumDetailsState(albumDetails: $albumDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AlbumDetailsState &&
            (identical(other.albumDetails, albumDetails) ||
                const DeepCollectionEquality()
                    .equals(other.albumDetails, albumDetails)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(albumDetails);

  @JsonKey(ignore: true)
  @override
  _$AlbumDetailsStateCopyWith<_AlbumDetailsState> get copyWith =>
      __$AlbumDetailsStateCopyWithImpl<_AlbumDetailsState>(this, _$identity);
}

abstract class _AlbumDetailsState implements AlbumDetailsState {
  const factory _AlbumDetailsState({AlbumDetails albumDetails}) =
      _$_AlbumDetailsState;

  @override
  AlbumDetails get albumDetails => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AlbumDetailsStateCopyWith<_AlbumDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
