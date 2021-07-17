import 'package:get/get.dart';

class DetailsViewController extends GetxController with StateMixin {
  DetailsViewController();

  @override
  void onInit() {
    change(null, status: RxStatus.loading());
    super.onInit();
  }

  @override
  void onReady() async {
    change(null, status: RxStatus.success());
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
