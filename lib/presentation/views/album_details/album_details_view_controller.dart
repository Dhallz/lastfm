import 'package:get/get.dart';
import 'package:lastfm/domain/entities/album_details.dart';
import 'package:lastfm/domain/repositories/i_album_repository.dart';
import 'package:lastfm/domain/states/album_details_state.dart';

class AlbumDetailsViewController extends GetxController
    with StateMixin<AlbumDetailsState> {
  final IAlbumRepository albumRepository;

  AlbumDetailsViewController({
    required this.albumRepository,
  });

  @override
  void onInit() {
    change(null, status: RxStatus.loading());
    super.onInit();
  }

  @override
  void onReady() async {
    AlbumDetails? test = await albumRepository
        .getAlbumDetailsByNameAndArtist(
          name: Get.parameters['name']!,
          artist: Get.parameters['artist']!,
        )
        .then((either) => either.fold(
              (l) => null,
              (r) => r,
            ));

    if (test == null) {
      change(null, status: RxStatus.error());
    } else {
      change(AlbumDetailsState(albumDetails: test), status: RxStatus.success());
    }

    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
