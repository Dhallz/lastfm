import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:lastfm/presentation/core/styles/styles.dart';
import 'package:lastfm/presentation/widgets/track_card.dart';
import 'package:url_launcher/url_launcher.dart';
import 'album_details_view_controller.dart';

class AlbumDetailsView extends GetView<AlbumDetailsViewController> {
  AlbumDetailsView({Key? key}) : super(key: key);

  bool get hasTracks =>
      controller.state?.albumDetails.albumTracks != null &&
      controller.state!.albumDetails.albumTracks!.tracks!.isEmpty;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: controller.obx(
        (state) => Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
                        image: NetworkImage(controller.state!.albumDetails.cover
                            .firstWhere((cover) => cover.size == 'mega')
                            .url))),
              ),
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
        onError: (error) => Center(
          child: Text(error!),
        ),
      ),
    );
  }
}
