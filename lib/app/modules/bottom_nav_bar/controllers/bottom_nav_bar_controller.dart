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
      case 2:
        Get.toNamed(Routes.UPLOAD);
        break;
      default:
    }
  }
}
