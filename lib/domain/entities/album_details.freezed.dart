// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'album_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AlbumDetails _$AlbumDetailsFromJson(Map<String, dynamic> json) {
  return _AlbumDetails.fromJson(json);
}

/// @nodoc
class _$AlbumDetailsTearOff {
  const _$AlbumDetailsTearOff();

  _AlbumDetails call(
      {@JsonKey(name: 'artist')
          String artist = '',
      @JsonKey(name: 'image')
          List<Cover> cover = const <Cover>[],
      @JsonKey(name: 'tracks')
          AlbumTracks? albumTracks = const AlbumTracks(tracks: const <Track>[]),
      @JsonKey(name: 'url')
          String url = '',
      @JsonKey(name: 'name')
          String name = '',
      @JsonKey(name: 'listeners')
          String listeners = '0',
      @JsonKey(name: 'playcount')
          String playcount = '0',
      @JsonKey(name: 'wiki', required: false)
          Wiki? wiki = const Wiki()}) {
    return _AlbumDetails(
      artist: artist,
      cover: cover,
      albumTracks: albumTracks,
      url: url,
      name: name,
      listeners: listeners,
      playcount: playcount,
      wiki: wiki,
    );
  }

  AlbumDetails fromJson(Map<String, Object> json) {
    return AlbumDetails.fromJson(json);
  }
}

/// @nodoc
const $AlbumDetails = _$AlbumDetailsTearOff();

/// @nodoc
mixin _$AlbumDetails {
  @JsonKey(name: 'artist')
  String get artist => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  List<Cover> get cover => throw _privateConstructorUsedError;
  @JsonKey(name: 'tracks')
  AlbumTracks? get albumTracks => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'listeners')
  String get listeners => throw _privateConstructorUsedError;
  @JsonKey(name: 'playcount')
  String get playcount => throw _privateConstructorUsedError;
  @JsonKey(name: 'wiki', required: false)
  Wiki? get wiki => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlbumDetailsCopyWith<AlbumDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumDetailsCopyWith<$Res> {
  factory $AlbumDetailsCopyWith(
          AlbumDetails value, $Res Function(AlbumDetails) then) =
      _$AlbumDetailsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'artist') String artist,
      @JsonKey(name: 'image') List<Cover> cover,
      @JsonKey(name: 'tracks') AlbumTracks? albumTracks,
      @JsonKey(name: 'url') String url,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'listeners') String listeners,
      @JsonKey(name: 'playcount') String playcount,
      @JsonKey(name: 'wiki', required: false) Wiki? wiki});

  $AlbumTracksCopyWith<$Res>? get albumTracks;
  $WikiCopyWith<$Res>? get wiki;
}

/// @nodoc
class _$AlbumDetailsCopyWithImpl<$Res> implements $AlbumDetailsCopyWith<$Res> {
  _$AlbumDetailsCopyWithImpl(this._value, this._then);

  final AlbumDetails _value;
  // ignore: unused_field
  final $Res Function(AlbumDetails) _then;

  @override
  $Res call({
    Object? artist = freezed,
    Object? cover = freezed,
    Object? albumTracks = freezed,
    Object? url = freezed,
    Object? name = freezed,
    Object? listeners = freezed,
    Object? playcount = freezed,
    Object? wiki = freezed,
  }) {
    return _then(_value.copyWith(
      artist: artist == freezed
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String,
      cover: cover == freezed
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as List<Cover>,
      albumTracks: albumTracks == freezed
          ? _value.albumTracks
          : albumTracks // ignore: cast_nullable_to_non_nullable
              as AlbumTracks?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      listeners: listeners == freezed
          ? _value.listeners
          : listeners // ignore: cast_nullable_to_non_nullable
              as String,
      playcount: playcount == freezed
          ? _value.playcount
          : playcount // ignore: cast_nullable_to_non_nullable
              as String,
      wiki: wiki == freezed
          ? _value.wiki
          : wiki // ignore: cast_nullable_to_non_nullable
              as Wiki?,
    ));
  }

  @override
  $AlbumTracksCopyWith<$Res>? get albumTracks {
    if (_value.albumTracks == null) {
      return null;
    }

    return $AlbumTracksCopyWith<$Res>(_value.albumTracks!, (value) {
      return _then(_value.copyWith(albumTracks: value));
    });
  }

  @override
  $WikiCopyWith<$Res>? get wiki {
    if (_value.wiki == null) {
      return null;
    }

    return $WikiCopyWith<$Res>(_value.wiki!, (value) {
      return _then(_value.copyWith(wiki: value));
    });
  }
}

/// @nodoc
abstract class _$AlbumDetailsCopyWith<$Res>
    implements $AlbumDetailsCopyWith<$Res> {
  factory _$AlbumDetailsCopyWith(
          _AlbumDetails value, $Res Function(_AlbumDetails) then) =
      __$AlbumDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'artist') String artist,
      @JsonKey(name: 'image') List<Cover> cover,
      @JsonKey(name: 'tracks') AlbumTracks? albumTracks,
      @JsonKey(name: 'url') String url,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'listeners') String listeners,
      @JsonKey(name: 'playcount') String playcount,
      @JsonKey(name: 'wiki', required: false) Wiki? wiki});

  @override
  $AlbumTracksCopyWith<$Res>? get albumTracks;
  @override
  $WikiCopyWith<$Res>? get wiki;
}

/// @nodoc
class __$AlbumDetailsCopyWithImpl<$Res> extends _$AlbumDetailsCopyWithImpl<$Res>
    implements _$AlbumDetailsCopyWith<$Res> {
  __$AlbumDetailsCopyWithImpl(
      _AlbumDetails _value, $Res Function(_AlbumDetails) _then)
      : super(_value, (v) => _then(v as _AlbumDetails));

  @override
  _AlbumDetails get _value => super._value as _AlbumDetails;

  @override
  $Res call({
    Object? artist = freezed,
    Object? cover = freezed,
    Object? albumTracks = freezed,
    Object? url = freezed,
    Object? name = freezed,
    Object? listeners = freezed,
    Object? playcount = freezed,
    Object? wiki = freezed,
  }) {
    return _then(_AlbumDetails(
      artist: artist == freezed
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String,
      cover: cover == freezed
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as List<Cover>,
      albumTracks: albumTracks == freezed
          ? _value.albumTracks
          : albumTracks // ignore: cast_nullable_to_non_nullable
              as AlbumTracks?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      listeners: listeners == freezed
          ? _value.listeners
          : listeners // ignore: cast_nullable_to_non_nullable
              as String,
      playcount: playcount == freezed
          ? _value.playcount
          : playcount // ignore: cast_nullable_to_non_nullable
              as String,
      wiki: wiki == freezed
          ? _value.wiki
          : wiki // ignore: cast_nullable_to_non_nullable
              as Wiki?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AlbumDetails implements _AlbumDetails {
  const _$_AlbumDetails(
      {@JsonKey(name: 'artist')
          this.artist = '',
      @JsonKey(name: 'image')
          this.cover = const <Cover>[],
      @JsonKey(name: 'tracks')
          this.albumTracks = const AlbumTracks(tracks: const <Track>[]),
      @JsonKey(name: 'url')
          this.url = '',
      @JsonKey(name: 'name')
          this.name = '',
      @JsonKey(name: 'listeners')
          this.listeners = '0',
      @JsonKey(name: 'playcount')
          this.playcount = '0',
      @JsonKey(name: 'wiki', required: false)
          this.wiki = const Wiki()});

  factory _$_AlbumDetails.fromJson(Map<String, dynamic> json) =>
      _$_$_AlbumDetailsFromJson(json);

  @override
  @JsonKey(name: 'artist')
  final String artist;
  @override
  @JsonKey(name: 'image')
  final List<Cover> cover;
  @override
  @JsonKey(name: 'tracks')
  final AlbumTracks? albumTracks;
  @override
  @JsonKey(name: 'url')
  final String url;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'listeners')
  final String listeners;
  @override
  @JsonKey(name: 'playcount')
  final String playcount;
  @override
  @JsonKey(name: 'wiki', required: false)
  final Wiki? wiki;

  @override
  String toString() {
    return 'AlbumDetails(artist: $artist, cover: $cover, albumTracks: $albumTracks, url: $url, name: $name, listeners: $listeners, playcount: $playcount, wiki: $wiki)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AlbumDetails &&
            (identical(other.artist, artist) ||
                const DeepCollectionEquality().equals(other.artist, artist)) &&
            (identical(other.cover, cover) ||
                const DeepCollectionEquality().equals(other.cover, cover)) &&
            (identical(other.albumTracks, albumTracks) ||
                const DeepCollectionEquality()
                    .equals(other.albumTracks, albumTracks)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.listeners, listeners) ||
                const DeepCollectionEquality()
                    .equals(other.listeners, listeners)) &&
            (identical(other.playcount, playcount) ||
                const DeepCollectionEquality()
                    .equals(other.playcount, playcount)) &&
            (identical(other.wiki, wiki) ||
                const DeepCollectionEquality().equals(other.wiki, wiki)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(artist) ^
      const DeepCollectionEquality().hash(cover) ^
      const DeepCollectionEquality().hash(albumTracks) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(listeners) ^
      const DeepCollectionEquality().hash(playcount) ^
      const DeepCollectionEquality().hash(wiki);

  @JsonKey(ignore: true)
  @override
  _$AlbumDetailsCopyWith<_AlbumDetails> get copyWith =>
      __$AlbumDetailsCopyWithImpl<_AlbumDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AlbumDetailsToJson(this);
  }
}

abstract class _AlbumDetails implements AlbumDetails {
  const factory _AlbumDetails(
      {@JsonKey(name: 'artist') String artist,
      @JsonKey(name: 'image') List<Cover> cover,
      @JsonKey(name: 'tracks') AlbumTracks? albumTracks,
      @JsonKey(name: 'url') String url,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'listeners') String listeners,
      @JsonKey(name: 'playcount') String playcount,
      @JsonKey(name: 'wiki', required: false) Wiki? wiki}) = _$_AlbumDetails;

  factory _AlbumDetails.fromJson(Map<String, dynamic> json) =
      _$_AlbumDetails.fromJson;

  @override
  @JsonKey(name: 'artist')
  String get artist => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'image')
  List<Cover> get cover => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'tracks')
  AlbumTracks? get albumTracks => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'url')
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'listeners')
  String get listeners => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'playcount')
  String get playcount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'wiki', required: false)
  Wiki? get wiki => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AlbumDetailsCopyWith<_AlbumDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
