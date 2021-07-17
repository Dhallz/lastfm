import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:lastfm/domain/repositories/i_album_repository.dart';
import 'package:lastfm/infrastructure/environment/env.dart';

class HomeViewController extends GetxController with StateMixin {
  final IAlbumRepository albumRepository;

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
    change(null, status: RxStatus.success());
    // NOTE Temporary try
    await albumRepository
        .getAlbumById(mbid: '20eb0c75-815d-45b2-afc9-4aa93cb9920f')
        .then((either) => either.fold(
              (l) => debugPrint(l.message),
              (r) => debugPrint(r.artist),
            ));
    debugPrint('api base url : ${Get.find<Env>().apiBaseUrl}');
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
