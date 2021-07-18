import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lastfm/presentation/core/widgets/album_search_form_field.dart';
import 'package:lastfm/presentation/widgets/album_card.dart';
import 'home_view_controller.dart';

class HomeView extends GetView<HomeViewController> {
  HomeView({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image(
          image: AssetImage('assets/images/lastfm_title.png'),
          fit: BoxFit.contain,
          height: 90,
        ),
      ),
      body: controller.obx(
        (state) => Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: AlbumSearchFormField(
                          input: controller.searchInput,
                          onFieldSubmitted: (_) {
                            if (_formKey.currentState!.validate()) {
                              controller.searchAlbumsByName(
                                  controller.searchInput.value);
                            }
                          },
                        ),
                      ),
                      Positioned(
                        right: 0,
                        child: IconButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              controller.searchAlbumsByName(
                                  controller.searchInput.value);
                            }
                          },
                          icon: Icon(Icons.search),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0, bottom: 32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.album),
                      Icon(
                        Icons.art_track,
                        color: Colors.grey,
                      ),
                      Icon(
                        Icons.art_track_sharp,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        childAspectRatio: 1 / 1.2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                      ),
                      itemCount: controller.state?.albums.length,
                      itemBuilder: (BuildContext context, index) {
                        return AlbumCard(
                          album: controller.state!.albums[index],
                        );
                      }),
                ),
              ],
            ),
          ),
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
