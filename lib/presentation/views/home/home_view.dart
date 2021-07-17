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
      appBar: AppBar(),
      body: controller.obx(
        (state) => Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Text('Home'),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                            child: Form(
                          key: _formKey,
                          child: AlbumSearchFormField(
                            input: controller.searchInput,
                          ),
                        )),
                        IconButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              controller.searchAlbumsByName(
                                  controller.searchInput.value);
                            }
                          },
                          icon: Icon(Icons.search),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200,
                          childAspectRatio: 1 / 1,
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
        ),
        onLoading: Center(child: LinearProgressIndicator()),
        onEmpty: Container(),
        onError: (error) => Center(
          child: Text(error!),
        ),
      ),
    );
  }
}
