import 'package:get/get.dart';

import '../controllers/MarketController.dart';

class MarketBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MarketController>(
      () => MarketController(),
    );
  }
}
