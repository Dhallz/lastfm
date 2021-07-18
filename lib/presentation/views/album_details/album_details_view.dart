import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:lastfm/presentation/core/styles/styles.dart';
import 'package:lastfm/presentation/widgets/track_card.dart';
import 'package:url_launcher/url_launcher.dart';
import 'album_details_view_controller.dart';

class AlbumDetailsView extends GetView<AlbumDetailsViewController> {
  AlbumDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: controller.obx(
        (state) => Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(
                    minWidth: context.width,
                    maxHeight: context.width,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(0, 4), //(x,y)
                            blurRadius: 3.0,
                          ),
                        ],
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(controller
                                .state!.albumDetails.cover
                                .firstWhere((cover) => cover.size == 'mega')
                                .url))),
                  ),
                ),
                Positioned(
                    bottom: 10,
                    left: 10,
                    child: Container(
                      // padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: IconButton(
                          onPressed: () => Get.back(),
                          icon: Icon(
                            Icons.backspace,
                            color: Colors.black,
                          )),
                    )),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        children: [
                          Text(
                            NumberFormat.compact().format(int.parse(
                                controller.state!.albumDetails.playcount)),
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                          SizedBox(width: 20),
                          Text(
                            NumberFormat.compact().format(int.parse(
                                controller.state!.albumDetails.listeners)),
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                        ],
                      )),
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: ExpansionTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      controller.state!.albumDetails.name,
                      style: kTitleStyle,
                    ),
                    Text(
                      controller.state!.albumDetails.artist,
                      style: kSubTextItalic,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
                trailing: Icon(Icons.info_rounded),
                initiallyExpanded: true,
                children: [
                  Html(
                    data: controller.state!.albumDetails.wiki?.summary ?? '',
                    onLinkTap: (url, context, attributes, element) async =>
                        await launch(url!),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: ListView.builder(
                  itemCount: controller
                          .state!.albumDetails.albumTracks?.tracks?.length ??
                      0,
                  itemBuilder: (context, index) => TrackCard(
                      track: controller
                          .state!.albumDetails.albumTracks!.tracks![index]),
                ),
              ),
            ),
          ],
        ),
        onLoading: Center(child: CupertinoActivityIndicator()),
        onEmpty: Container(),
        onError: (error) {
          Future.delayed(
            Duration(milliseconds: 1000),
            () => Get.back(closeOverlays: false),
          );
          return Center(
            child: Text(error ?? 'Oups ! Something went wrong :('),
          );
        },
      ),
    );
  }
}
