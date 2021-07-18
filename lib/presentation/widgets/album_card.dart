import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:lastfm/domain/entities/album.dart';
import 'package:lastfm/presentation/core/styles/styles.dart';
import 'package:lastfm/presentation/navigation/routes.dart';
import 'package:lastfm/presentation/views/home/home_view_controller.dart';

class AlbumCard extends GetView<HomeViewController> {
  final Album album;

  AlbumCard({
    required this.album,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(
          '${Routes.ALBUM_DETAILS}?name=${album.name}&artist=${album.artist}'),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(album.cover[2].url),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(2, 2), //(x,y)
                      blurRadius: 3.0,
                    ),
                  ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0, left: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  album.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: kTitleStyle.copyWith(fontSize: 13),
                ),
                Text(
                  album.artist,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: kSubTextItalic,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
