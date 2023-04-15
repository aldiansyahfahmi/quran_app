import 'package:flutter/material.dart';
import 'package:quran_app/app/shared_libraries/utils/setup/app_setup.dart';
import 'package:quran_app/di/dependency_injections.dart';
import 'package:quran_app/main.dart';

void main() async {
  Config.appFlavor = Flavor.dev;
  WidgetsFlutterBinding.ensureInitialized();
  DependencyInjection.init();
  runApp(const MyApp());
}
