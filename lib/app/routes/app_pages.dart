import 'package:get/get.dart';

import 'package:haiternak_mobile/app/modules/bottom_nav_bar/bindings/bottom_nav_bar_binding.dart';
import 'package:haiternak_mobile/app/modules/bottom_nav_bar/views/bottom_nav_bar_view.dart';
import 'package:haiternak_mobile/app/modules/chat/bindings/chat_binding.dart';
import 'package:haiternak_mobile/app/modules/chat/views/chat_view.dart';
import 'package:haiternak_mobile/app/modules/home/bindings/home_binding.dart';
import 'package:haiternak_mobile/app/modules/home/views/home_view.dart';
import 'package:haiternak_mobile/app/modules/login/bindings/login_binding.dart';
import 'package:haiternak_mobile/app/modules/login/views/login_view.dart';
import 'package:haiternak_mobile/app/modules/onboarding/bindings/onboarding_binding.dart';
import 'package:haiternak_mobile/app/modules/onboarding/views/onboarding_view.dart';
import 'package:haiternak_mobile/app/modules/splash/bindings/splash_binding.dart';
import 'package:haiternak_mobile/app/modules/splash/views/splash_view.dart';
import 'package:haiternak_mobile/app/modules/upload/bindings/upload_binding.dart';
import 'package:haiternak_mobile/app/modules/upload/views/upload_view.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOM_NAV_BAR,
      page: () => BottomNavBarView(),
      binding: BottomNavBarBinding(),
    ),
    GetPage(
      name: _Paths.CHAT,
      page: () => ChatView(),
      binding: ChatBinding(),
    ),
    GetPage(
      name: _Paths.UPLOAD,
      page: () => UploadView(),
      binding: UploadBinding(),
    ),
  ];
}
