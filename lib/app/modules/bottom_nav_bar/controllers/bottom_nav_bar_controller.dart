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
<<<<<<< HEAD
      case 1:
        Get.toNamed(Routes.MARKET);
        break;
=======
      // case 1:
      //   Get.toNamed(Routes.MARKET);
      //   break;
>>>>>>> 9b1f37d93acd35786ffdb23fd8f3eb82ceca6548
      case 2:
        Get.toNamed(Routes.UPLOAD);
        break;
      case 3:
        Get.toNamed(Routes.CHAT);
        break;
      default:
    }
  }
}
