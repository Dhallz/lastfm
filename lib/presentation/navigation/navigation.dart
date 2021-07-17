import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lastfm/presentation/views/album_details/album_details_view.dart';
import 'package:lastfm/presentation/views/album_details/album_details_view_controller_bindings.dart';
import '../views/home/home_view.dart';
import '../views/home/home_view_controller_bindings.dart';

import 'routes.dart';

class Navigation {
  static List<GetPage> get getRoutes => [
        // REVIEW Routes
        GetPage(
          name: Routes.ALBUM_DETAILS,
          page: () => AlbumDetailsView(),
          binding: AlbumDetailsViewControllerBindings(),
          settings: RouteSettings(name: Routes.ALBUM_DETAILS),
        ),
        GetPage(
          name: Routes.HOME,
          page: () => HomeView(),
          binding: HomeViewControllerBindings(),
          settings: RouteSettings(name: Routes.HOME),
        ),
      ];
}
