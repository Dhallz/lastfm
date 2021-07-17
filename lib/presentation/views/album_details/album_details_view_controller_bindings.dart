import 'package:get/get.dart';

import 'album_details_view_controller.dart';

class AlbumDetailsViewControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AlbumDetailsViewController>(
      () => AlbumDetailsViewController(),
    );
  }
}
