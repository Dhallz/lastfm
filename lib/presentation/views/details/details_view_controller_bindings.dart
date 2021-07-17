import 'package:get/get.dart';

import 'details_view_controller.dart';

class DetailsViewControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailsViewController>(
      () => DetailsViewController(),
    );
  }
}
