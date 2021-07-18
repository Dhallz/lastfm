import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:lastfm/domain/entities/track.dart';
import 'package:lastfm/presentation/core/styles/styles.dart';
import 'package:lastfm/presentation/views/album_details/album_details_view_controller.dart';
import 'package:url_launcher/url_launcher.dart';

class TrackCard extends GetView<AlbumDetailsViewController> {
  final Track track;

  TrackCard({required this.track});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async => await launch(track.url),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                  child: Text(
                track.name,
                style: kTextStyle,
              )),
              Text(
                Duration(seconds: track.duration)
                    .toString()
                    .split('.')
                    .first
                    .padLeft(8, '0'),
                style: kSubTextItalic,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
