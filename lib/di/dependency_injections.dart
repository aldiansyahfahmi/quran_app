import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:quran_app/app/shared_libraries/core/dio_handler.dart';
import 'package:quran_app/app/shared_libraries/utils/setup/app_setup.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DependencyInjection {
  static void init() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    Get.put<SharedPreferences>(sharedPreferences, permanent: true);
    Get.put<Dio>(
      DioHandler(
        apiBaseUrl: Config.baseUrl,
        sharedPreferences: sharedPreferences,
      ).dio,
      permanent: true,
    );
  }
}
