// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album_tracks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AlbumTracks _$_$_AlbumTracksFromJson(Map<String, dynamic> json) {
  return _$_AlbumTracks(
    tracks: (json['track'] as List<dynamic>?)
        ?.map((e) => Track.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_AlbumTracksToJson(_$_AlbumTracks instance) =>
    <String, dynamic>{
      'track': instance.tracks,
    };
