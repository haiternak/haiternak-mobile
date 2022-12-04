import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:haiternak_mobile/app/routes/app_pages.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    Timer(Duration(seconds: 2), goToNewPage);
  }

  void goToNewPage() {
    if (FirebaseAuth.instance.currentUser != null) {
      Get.toNamed(Routes.HOME);
    } else {
      Get.toNamed(Routes.ONBOARDING);
    }
  }
}
