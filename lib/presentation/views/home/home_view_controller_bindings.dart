import 'package:get/get.dart';
import 'package:lastfm/domain/repositories/i_album_repository.dart';
import 'package:lastfm/infrastructure/repositories/album_repository.dart';

import 'home_view_controller.dart';

class HomeViewControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeViewController>(
      () => HomeViewController(
        albumRepository: Get.put<IAlbumRepository>(Get.put(AlbumRepository())),
      ),
    );
  }
}
