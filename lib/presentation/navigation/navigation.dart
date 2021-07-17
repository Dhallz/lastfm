import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../views/details/details_view.dart';
import '../views/details/details_view_controller_bindings.dart';
import '../views/home/home_view.dart';
import '../views/home/home_view_controller_bindings.dart';

import 'routes.dart';

class Navigation {
  static List<GetPage> get getRoutes => [
        // REVIEW Routes
        GetPage(
          name: Routes.DETAILS,
          page: () => DetailsView(),
          binding: DetailsViewControllerBindings(),
          settings: RouteSettings(name: Routes.DETAILS),
        ),
        GetPage(
          name: Routes.HOME,
          page: () => HomeView(),
          binding: HomeViewControllerBindings(),
          settings: RouteSettings(name: Routes.HOME),
        ),
      ];
}
