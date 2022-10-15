import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

class MarketController extends GetxController {
  final currentIndex = 0.obs;

  CarouselController buttonCarouselController = CarouselController();

  void changePage(int currentIndex) {
    this.currentIndex.value = currentIndex;
  }

  List<Map<String, dynamic>> korosal = [
    {
      'image': 'assets/images/item-market1.png',
    },
    {
      'image': 'assets/images/item-market2.png',
    },
    {
      'image': 'assets/images/item-market3.png',
    },
  ];
}

// class HomeController extends GetxController {
//   final currentIndex = 0.obs;
//
//   CarouselController buttonCarouselController = CarouselController();
//
//   void changePage(int currentIndex) {
//     this.currentIndex.value = currentIndex;
//   }
//
//   List<Map<String, dynamic>> corousel = [
//     {
//       'image': 'assets/images/chicken.png',
//       'subtitle':
//       'Scan feses ayam kamu disini sebagai tindakan preventif bahaya di peternakanmu.',
//       'title': 'Deteksi Dini Bahaya di Peternakanmu',
//     },
//     {
//       'image': 'assets/images/chicken.png',
//       'subtitle':
//       'Scan feses ayam kamu disini sebagai tindakan preventif bahaya di peternakanmu.',
//       'title': 'Deteksi Dini Bahaya di Peternakanmu',
//     },
//     {
//       'image': 'assets/images/chicken.png',
//       'subtitle':
//       'Scan feses ayam kamu disini sebagai tindakan preventif bahaya di peternakanmu.',
//       'title': 'Deteksi Dini Bahaya di Peternakanmu',
//     },
//   ];
// }
