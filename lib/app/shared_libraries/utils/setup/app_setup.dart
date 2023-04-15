import 'package:quran_app/app/shared_libraries/utils/constants/app_constants.dart';

enum Flavor {
  dev,
  prod,
}

class Config {
  static Config? _instance;

  Config._internal() {
    _instance = this;
  }

  factory Config() => _instance ?? Config._internal();

  static Flavor? appFlavor;

  static bool get isDebug {
    if (appFlavor == Flavor.dev) {
      return false;
    } else {
      return true;
    }
  }

  static String get baseUrl {
    if (appFlavor == Flavor.prod) {
      return AppConstants.appApi.baseUrlProduction;
    } else {
      return AppConstants.appApi.baseUrlDevelopment;
    }
  }
}
