import 'package:get/get.dart';
import 'package:haiternak_mobile/app/modules/bottom_nav_bar/bindings/bottom_nav_bar_binding.dart';
import 'package:haiternak_mobile/app/modules/bottom_nav_bar/views/bottom_nav_bar_view.dart';
import 'package:haiternak_mobile/app/modules/home/bindings/home_binding.dart';
import 'package:haiternak_mobile/app/modules/home/views/home_view.dart';
import 'package:haiternak_mobile/app/modules/onboarding/bindings/onboarding_binding.dart';
import 'package:haiternak_mobile/app/modules/onboarding/views/onboarding_view.dart';
import 'package:haiternak_mobile/app/modules/splash/bindings/splash_binding.dart';
import 'package:haiternak_mobile/app/modules/splash/views/splash_view.dart';
import 'package:haiternak_mobile/app/modules/upload/bindings/upload_binding.dart';
import 'package:haiternak_mobile/app/modules/upload/views/upload_view.dart';

import '../modules/market_place/bindings/market_binding.dart';
import '../modules/market_place/views/market_view.dart';

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
      name: _Paths.BOTTOM_NAV_BAR,
      page: () => BottomNavBarView(),
      binding: BottomNavBarBinding(),
    ),
    GetPage(
      name: _Paths.UPLOAD,
      page: () => UploadView(),
      binding: UploadBinding(),
    ),
    GetPage(
      name: _Paths.MARKET,
      page: () => MarketView(),
      binding: MarketBinding(),
    ),
  ];
}
