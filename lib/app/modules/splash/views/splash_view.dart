import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:haiternak_mobile/configs/configs.dart';
import 'package:haiternak_mobile/constants/constants.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo-splash.png'),
              SizedBox(
                height: getProperHeight(70),
              ),
              CircularProgressIndicator(
                color: kBackgroundColor1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
