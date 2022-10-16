import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:haiternak_mobile/constants/constants.dart';

class ChatController extends GetxController {
  final currentIndex = 1.obs;

  void changeIndex(int id) {
    currentIndex.value = id;
  }

  List<Map<String, dynamic>> listDay = [
    {
      'id': 1,
      'title': 'Senin',
    },
    {
      'id': 2,
      'title': 'Selasa',
    },
    {
      'id': 3,
      'title': 'Rabu',
    },
    {
      'id': 4,
      'title': 'Kamis',
    },
    {
      'id': 5,
      'title': 'Jumat',
    },
    {
      'id': 6,
      'title': 'Sabtu',
    },
    {
      'id': 7,
      'title': 'Minggu',
    },
  ];

  BoxDecoration unselectDecoration = BoxDecoration(
    color: kBackgroundColor1,
    border: Border.all(
      color: kPrimaryColor,
    ),
    borderRadius: BorderRadius.circular(20),
  );

  BoxDecoration selectDecoration = BoxDecoration(
    color: kPrimaryColor,
    borderRadius: BorderRadius.circular(20),
  );
}
