import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:lastfm/domain/entities/album.dart';
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
          "${Routes.ALBUM_DETAILS}?name=${album.name}&artist=${album.artist}"),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: NetworkImage(album.cover[3].url),
              fit: BoxFit.cover,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                offset: Offset(2, 2), //(x,y)
                blurRadius: 3.0,
              ),
            ]),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Padding(
              //   padding: const EdgeInsets.only(right: 16.0),
              //   child: CircleAvatar(
              //     foregroundColor: Colors.black,
              //     minRadius: 30,
              //     backgroundImage: NetworkImage(album.cover.first.url),
              //   ),
              // ),
              Expanded(child: Text(album.name))
            ],
          ),
        ),
      ),
    );
  }
}
