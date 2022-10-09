import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:haiternak_mobile/constants/constants.dart';

class HomeController extends GetxController {
  final currentIndex = 0.obs;

  CarouselController buttonCarouselController = CarouselController();

  void changePage(int currentIndex) {
    this.currentIndex.value = currentIndex;
  }

  List<Map<String, dynamic>> corousel = [
    {
      'image': 'assets/images/chicken.png',
      'subtitle':
          'Scan feses ayam kamu disini sebagai tindakan preventif bahaya di peternakanmu.',
      'title': 'Deteksi Dini Bahaya di Peternakanmu',
    },
    {
      'image': 'assets/images/chicken.png',
      'subtitle':
          'Scan feses ayam kamu disini sebagai tindakan preventif bahaya di peternakanmu.',
      'title': 'Deteksi Dini Bahaya di Peternakanmu',
    },
    {
      'image': 'assets/images/chicken.png',
      'subtitle':
          'Scan feses ayam kamu disini sebagai tindakan preventif bahaya di peternakanmu.',
      'title': 'Deteksi Dini Bahaya di Peternakanmu',
    },
  ];
}
