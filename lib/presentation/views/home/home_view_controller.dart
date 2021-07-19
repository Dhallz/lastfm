import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:lastfm/domain/repositories/i_album_repository.dart';
import 'package:lastfm/domain/states/home_state.dart';

class HomeViewController extends GetxController with StateMixin<HomeState> {
  final IAlbumRepository albumRepository;

  final RxString searchInput = ''.obs;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  HomeViewController({
    required this.albumRepository,
  });

  @override
  void onInit() {
    change(null, status: RxStatus.loading());
    super.onInit();
  }

  @override
  void onReady() async {
    change(
        HomeState(
            albums: await albumRepository.searchAlbumsByName(name: 'a').then(
                  (either) => either.fold(
                    (l) => [],
                    (r) => r,
                  ),
                )),
        status: RxStatus.success());
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void searchAlbumsByName(String name) async {
    if (formKey.currentState!.validate()) {
      change(HomeState(
          albums: await albumRepository.searchAlbumsByName(name: name).then(
                (either) => either.fold(
                  (l) => [],
                  (r) => r,
                ),
              )));
    }
  }
}
