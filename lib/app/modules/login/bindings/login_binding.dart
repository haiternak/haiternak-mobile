import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
  }
}

// import '../controllers/login_controller.dart';
// class LoginBinding extends Bindings {
//   @override
//   void dependencies() {
//     Get.lazyPut<LoginController>(
//       () => LoginController(),
//     );
//     Get.lazyPut<AuthController>(() => AuthController(), fenix: true);
//     Get.lazyPut<OnboardingController>(() => OnboardingController(),
//         fenix: true);
//   }
// }
