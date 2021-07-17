// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AlbumDetails _$_$_AlbumDetailsFromJson(Map<String, dynamic> json) {
  return _$_AlbumDetails(
    artist: json['artist'] as String,
    cover: (json['image'] as List<dynamic>)
        .map((e) => Cover.fromJson(e as Map<String, dynamic>))
        .toList(),
    url: json['url'] as String,
    name: json['name'] as String,
    listeners: json['listeners'] as String,
    playcount: json['playcount'] as String,
    wiki: json['wiki'] == null
        ? null
        : Wiki.fromJson(json['wiki'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_AlbumDetailsToJson(_$_AlbumDetails instance) =>
    <String, dynamic>{
      'artist': instance.artist,
      'image': instance.cover,
      'url': instance.url,
      'name': instance.name,
      'listeners': instance.listeners,
      'playcount': instance.playcount,
      'wiki': instance.wiki,
    };
