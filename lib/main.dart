import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran_app/app/routes/app_pages.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Quran App",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
