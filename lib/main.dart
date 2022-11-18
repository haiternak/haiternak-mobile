import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:haiternak_mobile/themes/themes.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      title: "Haiternak",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
