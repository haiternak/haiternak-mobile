import 'package:get/get.dart';
import 'package:haiternak_mobile/app/routes/app_pages.dart';

class BottomNavBarController extends GetxController {
  final currentIndex = 0.obs;

  void goToPage(int index) {
    // * to check current page before navigation

    if (index != 2) {
      currentIndex.value = index;
    }
    switch (index) {
      case 0:
        Get.toNamed(Routes.HOME);
        break;
      case 1:
        Get.toNamed(Routes.MARKET);
        break;
      case 2:
        Get.toNamed(Routes.UPLOAD);
        break;
      case 3:
        Get.toNamed(Routes.CHAT);
        break;
      case 4:
        Get.toNamed(Routes.PROFILE);
        break;
      default:
    }
  }
}
