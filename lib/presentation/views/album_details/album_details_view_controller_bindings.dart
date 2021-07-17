import 'package:get/get.dart';
import 'package:lastfm/domain/repositories/i_album_repository.dart';
import 'package:lastfm/infrastructure/repositories/album_repository.dart';

import 'album_details_view_controller.dart';

class AlbumDetailsViewControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AlbumDetailsViewController>(
      () => AlbumDetailsViewController(
        albumRepository: Get.put<IAlbumRepository>(Get.put(AlbumRepository())),
      ),
    );
  }
}
