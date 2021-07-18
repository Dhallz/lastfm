import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lastfm/domain/entities/track.dart';

part 'album_tracks.freezed.dart';
part 'album_tracks.g.dart';

@freezed
class AlbumTracks with _$AlbumTracks {
  const factory AlbumTracks({
    @Default(<Track>[]) @JsonKey(name: 'track') List<Track>? tracks,
  }) = _AlbumTracks;

  factory AlbumTracks.fromJson(Map<String, dynamic> json) =>
      _$AlbumTracksFromJson(json);
}
