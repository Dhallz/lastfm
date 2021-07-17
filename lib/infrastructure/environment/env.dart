import 'package:get/get.dart';

import 'env_type.dart';

class Env extends GetxService {
  // ┍━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┑
  // ┃ Environment                                                     ┃
  // ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┙

  EnvType env = EnvType.dev();

  String defaultUsername = 'dhawud@gmail.com';
  String defaultPassword = 'oeil.69006';

  bool get showDebugBanner => env != EnvType.prod();

  // ┍━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┑
  // ┃ Api Keys                                                        ┃
  // ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┙

  String get apiKey {
    return env.when(
      dev: () => '0242451f7240c11a63f03d5bb75d151c',
      prod: () => '0242451f7240c11a63f03d5bb75d151c',
    );
  }

  // ┍━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┑
  // ┃ Api Base Url                                                    ┃
  // ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┙

  String get apiBaseUrl {
    return env.when(
      dev: () => 'http://ws.audioscrobbler.com/2.0/',
      prod: () => 'http://ws.audioscrobbler.com/2.0/',
    );
  }

  // ┍━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┑
  // ┃ Auth Base Url                                                   ┃
  // ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┙

  String get authBaseUrl {
    return env.when(
      dev: () => '',
      prod: () => '',
    );
  }
}
