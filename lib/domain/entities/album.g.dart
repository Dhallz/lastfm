// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Album _$_$_AlbumFromJson(Map<String, dynamic> json) {
  return _$_Album(
    name: json['name'] as String,
    cover: (json['image'] as List<dynamic>)
        .map((e) => Cover.fromJson(e as Map<String, dynamic>))
        .toList(),
    url: json['url'] as String,
    artist: json['artist'] as String,
    mbid: json['mbid'] as String,
  );
}

Map<String, dynamic> _$_$_AlbumToJson(_$_Album instance) => <String, dynamic>{
      'name': instance.name,
      'image': instance.cover,
      'url': instance.url,
      'artist': instance.artist,
      'mbid': instance.mbid,
    };
