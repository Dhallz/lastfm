// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'album_tracks.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AlbumTracks _$AlbumTracksFromJson(Map<String, dynamic> json) {
  return _AlbumTracks.fromJson(json);
}

/// @nodoc
class _$AlbumTracksTearOff {
  const _$AlbumTracksTearOff();

  _AlbumTracks call(
      {@JsonKey(name: 'track') List<Track>? tracks = const <Track>[]}) {
    return _AlbumTracks(
      tracks: tracks,
    );
  }

  AlbumTracks fromJson(Map<String, Object> json) {
    return AlbumTracks.fromJson(json);
  }
}

/// @nodoc
const $AlbumTracks = _$AlbumTracksTearOff();

/// @nodoc
mixin _$AlbumTracks {
  @JsonKey(name: 'track')
  List<Track>? get tracks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlbumTracksCopyWith<AlbumTracks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumTracksCopyWith<$Res> {
  factory $AlbumTracksCopyWith(
          AlbumTracks value, $Res Function(AlbumTracks) then) =
      _$AlbumTracksCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'track') List<Track>? tracks});
}

/// @nodoc
class _$AlbumTracksCopyWithImpl<$Res> implements $AlbumTracksCopyWith<$Res> {
  _$AlbumTracksCopyWithImpl(this._value, this._then);

  final AlbumTracks _value;
  // ignore: unused_field
  final $Res Function(AlbumTracks) _then;

  @override
  $Res call({
    Object? tracks = freezed,
  }) {
    return _then(_value.copyWith(
      tracks: tracks == freezed
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as List<Track>?,
    ));
  }
}

/// @nodoc
abstract class _$AlbumTracksCopyWith<$Res>
    implements $AlbumTracksCopyWith<$Res> {
  factory _$AlbumTracksCopyWith(
          _AlbumTracks value, $Res Function(_AlbumTracks) then) =
      __$AlbumTracksCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'track') List<Track>? tracks});
}

/// @nodoc
class __$AlbumTracksCopyWithImpl<$Res> extends _$AlbumTracksCopyWithImpl<$Res>
    implements _$AlbumTracksCopyWith<$Res> {
  __$AlbumTracksCopyWithImpl(
      _AlbumTracks _value, $Res Function(_AlbumTracks) _then)
      : super(_value, (v) => _then(v as _AlbumTracks));

  @override
  _AlbumTracks get _value => super._value as _AlbumTracks;

  @override
  $Res call({
    Object? tracks = freezed,
  }) {
    return _then(_AlbumTracks(
      tracks: tracks == freezed
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as List<Track>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AlbumTracks implements _AlbumTracks {
  const _$_AlbumTracks({@JsonKey(name: 'track') this.tracks = const <Track>[]});

  factory _$_AlbumTracks.fromJson(Map<String, dynamic> json) =>
      _$_$_AlbumTracksFromJson(json);

  @override
  @JsonKey(name: 'track')
  final List<Track>? tracks;

  @override
  String toString() {
    return 'AlbumTracks(tracks: $tracks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AlbumTracks &&
            (identical(other.tracks, tracks) ||
                const DeepCollectionEquality().equals(other.tracks, tracks)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tracks);

  @JsonKey(ignore: true)
  @override
  _$AlbumTracksCopyWith<_AlbumTracks> get copyWith =>
      __$AlbumTracksCopyWithImpl<_AlbumTracks>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AlbumTracksToJson(this);
  }
}

abstract class _AlbumTracks implements AlbumTracks {
  const factory _AlbumTracks({@JsonKey(name: 'track') List<Track>? tracks}) =
      _$_AlbumTracks;

  factory _AlbumTracks.fromJson(Map<String, dynamic> json) =
      _$_AlbumTracks.fromJson;

  @override
  @JsonKey(name: 'track')
  List<Track>? get tracks => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AlbumTracksCopyWith<_AlbumTracks> get copyWith =>
      throw _privateConstructorUsedError;
}
