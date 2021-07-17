import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';
import 'package:url_launcher/url_launcher.dart';
import 'album_details_view_controller.dart';

class AlbumDetailsView extends GetView<AlbumDetailsViewController> {
  AlbumDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
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
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(controller.state!.album.cover
                            .firstWhere((cover) => cover.size == 'mega')
                            .url))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(controller.state!.album.name),
                  ExpansionTile(
                    title: Text(
                      'Album wiki',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    initiallyExpanded: true,
                    children: [
                      Html(
                        data: controller.state!.album.wiki?.summary ?? '',
                        onLinkTap: (url, context, attributes, element) async =>
                            await launch(url!),
                      ),
                    ],
                  ),
                  // Html(
                  //   data: controller.state!.album.wiki?.summary ?? '',
                  //   onLinkTap: (url, context, attributes, element) async =>
                  //       await launch(url!),
                  // ),
                  // ReadMoreText(
                  //   controller.state!.album.wiki?.summary ?? '',
                  // ),
                  // Text(controller.state!.album.wiki?.summary ?? ''),
                ],
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
