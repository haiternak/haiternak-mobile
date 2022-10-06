import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:haiternak_mobile/themes/themes.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
