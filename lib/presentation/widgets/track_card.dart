import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:lastfm/domain/entities/track.dart';
import 'package:lastfm/presentation/views/album_details/album_details_view_controller.dart';

class TrackCard extends GetView<AlbumDetailsViewController> {
  final Track track;

  TrackCard({required this.track});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(child: Text(track.name)),
            Text(Duration(seconds: track.duration).toString()),
          ],
        ),
      ),
    );
  }
}
