import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lastfm/domain/entities/album_tracks.dart';
import 'package:lastfm/domain/entities/cover.dart';
import 'package:lastfm/domain/entities/track.dart';
import 'package:lastfm/domain/entities/wiki.dart';

part 'album_details.freezed.dart';
part 'album_details.g.dart';

@freezed
class AlbumDetails with _$AlbumDetails {
  const factory AlbumDetails({
    @Default('') @JsonKey(name: 'artist') String artist,
    @Default(<Cover>[]) @JsonKey(name: 'image') List<Cover> cover,
    @Default(AlbumTracks(tracks: <Track>[]))
    @JsonKey(name: 'tracks')
        AlbumTracks? albumTracks,
    @Default('') @JsonKey(name: 'url') String url,
    @Default('') @JsonKey(name: 'name') String name,
    @Default('0') @JsonKey(name: 'listeners') String listeners,
    @Default('0') @JsonKey(name: 'playcount') String playcount,
    @Default(Wiki()) @JsonKey(name: 'wiki', required: false) Wiki? wiki,
  }) = _AlbumDetails;

  factory AlbumDetails.fromJson(Map<String, dynamic> json) =>
      _$AlbumDetailsFromJson(json);
}
