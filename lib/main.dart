import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:lastfm/infrastructure/environment/env.dart';

import 'presentation/navigation/navigation.dart';
import 'presentation/navigation/routes.dart';
import 'splash.dart';

void main() async {
  runApp(
    Splash(
      onInitializationComplete: () => runMainApp(),
    ),
  );
}

void runMainApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    KeyboardDismisser(
      gestures: [
        GestureType.onTapUp,
      ],
      child: GetMaterialApp(
        title: 'lastfm',
        initialRoute: Routes.initialRoute,
        getPages: Navigation.getRoutes,
        defaultTransition: Transition.cupertino,
        debugShowCheckedModeBanner: Get.find<Env>().showDebugBanner,
        enableLog: true,
        themeMode: ThemeMode.dark,
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
      ),
    ),
  );
}
