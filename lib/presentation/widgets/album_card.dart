import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:lastfm/domain/entities/album.dart';
import 'package:lastfm/presentation/views/home/home_view_controller.dart';

class AlbumCard extends GetView<HomeViewController> {
  final Album album;

  AlbumCard({
    required this.album,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // image: DecorationImage(
        //   image: NetworkImage(album.url),
        //   fit: BoxFit.fill,
        // ),
      ),
      child: Card(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 10,
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
              //     backgroundImage: NetworkImage(album.imageUrl),
              //   ),
              // ),
              Container(
                child: Center(
                  child: Text('name'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
