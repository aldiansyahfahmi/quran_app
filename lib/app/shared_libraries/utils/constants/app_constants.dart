class AppConstants {
  const AppConstants();

  static App app = const App();
  static CachedKey cachedKey = const CachedKey();
  static AppApi appApi = const AppApi();
  static ErrorKey errorKey = const ErrorKey();
}

class App {
  const App();

  double get defaultMargin => 16.0;
}

class CachedKey {
  const CachedKey();

  String get tokenKey => 'tokenKey';
}

class AppApi {
  const AppApi();

  String get baseUrlDevelopment => '';

  String get baseUrlProduction => '';
}

class ErrorKey {
  const ErrorKey();

  String get message => "message";
}
