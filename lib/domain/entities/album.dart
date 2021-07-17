import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lastfm/domain/entities/cover.dart';

part 'album.freezed.dart';
part 'album.g.dart';

@freezed
class Album with _$Album {
  const factory Album({
    @Default('') @JsonKey(name: 'name') String name,
    @JsonKey(name: 'image') required List<Cover> cover,
    @Default('') @JsonKey(name: 'url') String url,
    @Default('') @JsonKey(name: 'artist') String artist,
    // @Default('') @JsonKey(name: 'mbid') String mbid,
  }) = _Album;

  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);
}
