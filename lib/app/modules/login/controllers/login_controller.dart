import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class LoginController extends GetxController {
  final currentIndex = 0.obs;
  final _auth = FirebaseAuth.instance;
  String? email;
  String? password;
  String? notif;
  bool isError = false;

  //TODO: Implement LoginController
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  late TextEditingController emailController, passwordController;

  PageController pageController = PageController();

  void changePage(int currentIndex) {
    this.currentIndex.value = currentIndex;
  }

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
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

  Future<void> checkLogin() async {
    isError = false;
    final isValid = loginFormKey.currentState!.validate();
    loginFormKey.currentState!.save();
    // if (!isValid) {
    //   return;
    // } else {
    //   Get.offAllNamed(Routes.HOME);
    // }
    //
    try {
      await _auth.signInWithEmailAndPassword(
          email: email!, password: password!);

      if (_auth.currentUser != null) {
        isError = false;
        Get.offAllNamed(Routes.HOME);
      }
    } catch (e) {
      print(e);
      isError = true;
      notif = e.toString();
    }
  }
}
