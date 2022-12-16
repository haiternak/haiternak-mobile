import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class PakanController extends GetxController {
  final currentIndex = 0.obs;
  RxDouble kg = 50.0.obs;

  void changePage(int currentIndex) {
    this.currentIndex.value = currentIndex;
  }

  void changeberat(double nilai) {
    kg.value = nilai;
    update();
  }
}
