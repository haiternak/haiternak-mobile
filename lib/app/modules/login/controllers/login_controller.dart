import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:haiternak_mobile/app/routes/app_pages.dart';

class LoginController extends GetxController {
  final currentIndex = 0.obs;

  //TODO: Implement LoginController
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  late TextEditingController emailController, passwordController;

  PageController pageController = PageController();

  void changePage(int currentIndex) {
    this.currentIndex.value = currentIndex;
  }

  var email = '';
  var password = '';
  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
  }

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "Provide valid Email";
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.length < 6) {
      return "Password must be of 6 characters";
    }
    return null;
  }

  void checkLogin() {
    final isValid = loginFormKey.currentState!.validate();
    if (!isValid) {
      return;
    } else {
      Get.offAllNamed(Routes.HOME);
    }
    loginFormKey.currentState!.save();
  }
}
