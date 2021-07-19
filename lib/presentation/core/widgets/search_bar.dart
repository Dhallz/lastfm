import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:lastfm/presentation/views/home/home_view_controller.dart';

import 'album_search_form_field.dart';

class SearchBar extends GetView<HomeViewController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Form(
                key: controller.formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: AlbumSearchFormField(
                    input: controller.searchInput,
                    onFieldSubmitted: (_) {
                      controller
                          .searchAlbumsByName(controller.searchInput.value);
                    }),
              ),
              Positioned(
                right: 0,
                child: IconButton(
                  onPressed: () => controller
                      .searchAlbumsByName(controller.searchInput.value),
                  icon: Icon(Icons.search),
                ),
              )
            ],
          ),
        ));
  }
}
