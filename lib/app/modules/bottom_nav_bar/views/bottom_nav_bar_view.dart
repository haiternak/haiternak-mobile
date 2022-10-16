import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:haiternak_mobile/configs/configs.dart';
import 'package:haiternak_mobile/constants/constants.dart';

import '../controllers/bottom_nav_bar_controller.dart';

class BottomNavBarView extends GetView<BottomNavBarController> {
  @override
  Widget build(BuildContext context) {
    BottomNavBarController _controller = Get.put(BottomNavBarController());
    return Obx(
      () => BottomNavigationBar(
        backgroundColor: kBackgroundColor1,
        type: BottomNavigationBarType.fixed,
        currentIndex: _controller.currentIndex.value,
        onTap: (value) => _controller.goToPage(value),
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/home-icon.svg',
              color: _controller.currentIndex.value == 0
                  ? kPrimaryColor
                  : Color(0xFF808191),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/cart-icon.svg',
              color: _controller.currentIndex.value == 1
                  ? kPrimaryColor
                  : Color(0xFF808191),
            ),
            label: 'Market',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/picture-icon.svg',
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/report-icon.svg',
              color: _controller.currentIndex.value == 3
                  ? kPrimaryColor
                  : Color(0xFF808191),
            ),
            label: 'Konsul',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/user-icon.svg',
              color: _controller.currentIndex.value == 4
                  ? kPrimaryColor
                  : Color(0xFF808191),
            ),
            label: 'Akun',
          ),
        ],
      ),
    );
  }
}
