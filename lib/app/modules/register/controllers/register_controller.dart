import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class RegisterController extends GetxController {
  final currentIndex = 0.obs;
  final _auth = FirebaseAuth.instance;

  final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController namaLengkapController;
  late TextEditingController usernameController;

  PageController pageController = PageController();

  void changePage(int currentIndex) {
    this.currentIndex.value = currentIndex;
  }

  var email = '';
  var password = '';
  var namaLengkap = '';
  var username = '';

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    namaLengkapController = TextEditingController();
    usernameController = TextEditingController();
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    namaLengkapController.dispose();
    usernameController.dispose();
  }

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "Email Tidak Valid";
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.length < 6) {
      return "Password harus 6 characters";
    }
    return null;
  }

  String? validatenamaLengkap(String value) {
    if (value.isEmpty) {
      return "Nama tidak valid";
    }
    return null;
  }

  String? validateusername(String value) {
    if (value.isEmpty) {
      return "Username tidak valid";
    }
    return null;
  }

  // void checkRegister() {
  //   final isValid = registerFormKey.currentState!.validate();
  //   if (!isValid) {
  //     return;
  //   } else {
  //     Get.offAllNamed(Routes.LOGIN);
  //   }
  //   registerFormKey.currentState!.save();
  // }

  void checkRegister() async {
    // final isValid = loginFormKey.currentState!.validate();
    // if (!isValid) {
    //   return;
    // } else {
    //   Get.offAllNamed(Routes.HOME);
    // }
    // loginFormKey.currentState!.save();

    // final progrss = ProgressHUD.of(context);
    // progrss?.showWithText('Loading');
    final isValid = registerFormKey.currentState!.validate();
    registerFormKey.currentState!.save();
    try {
      final newUser = await _auth.createUserWithEmailAndPassword(
          email: email!, password: password!);

      if (newUser.credential != null) {
        // progrss?.dismiss();
        Get.offAllNamed(Routes.HOME);
      }
    } catch (e) {
      // progrss?.dismiss();
      print(e);
    }
  }
}
