import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:haiternak_mobile/app/modules/bottom_nav_bar/views/bottom_nav_bar_view.dart';
import 'package:haiternak_mobile/app/modules/market_place/components/card_caraousel_market.dart';
import 'package:haiternak_mobile/configs/configs.dart';

import '../../../../constants/constants.dart';
import '../controllers/MarketController.dart';

class MarketDetail extends GetView<MarketController> {
  @override
  Widget build(BuildContext context) {
    MarketController _controller = Get.put(MarketController());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    color: kPrimaryColor,
                    child: Row(
                      children: [
                        SizedBox(
                          width: getProperWidht(9),
                        ),
                        SvgPicture.asset('assets/images/logo.svg'),
                        Container(
                          width: 321.0,
                          child: Center(
                            child: Text(
                              'E-Pakan',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Icon(
                          Icons.add_shopping_cart,
                          color: kBackgroundColor1,
                        ),
                        SizedBox(
                          width: getProperWidht(10),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: getProperWidht(18),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Text(
                  'Kamu Harus Tau!',
                  style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      color: kPrimaryTextColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10.0),
                child: Text(
                  'Pemberian pakan, Vitamin dan alat penunjang kesehatan lainnnya dapat Meningkatkan potensi keunggulan pada ternak yang dipelihara dan meningkatkan hasil produksi',
                  style: primaryTextStyle.copyWith(
                      fontSize: 12, color: kPrimaryTextColor),
                ),
              ),
              SizedBox(
                height: getProperWidht(18),
              ),
              CarouselScroll(),
              Padding(
                padding: const EdgeInsets.all(60.0),
                child: Container(
                  width: double.infinity,
                  height: getProperHeight(getProperWidht(56)),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(null);
                    },
                    child: Expanded(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(Icons.shopping_cart),
                          Expanded(
                            child: Center(
                              child: Text(
                                'Beli Sekarang',
                                style: whiteTextStyle.copyWith(
                                  fontWeight: bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kPrimaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBarView(),
    );
  }
}

class CarouselScroll extends StatelessWidget {
  const CarouselScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MarketController _controller = Get.find();
    return Column(
      children: [
        CarouselSlider(
          carouselController: _controller.buttonCarouselController,
          options: CarouselOptions(
            height: getProperWidht(160),
            onPageChanged: (index, reason) => _controller.changePage(index),
            autoPlay: true,
          ),
          items: _controller.korosal.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return CardCaraouselMarket(
                  img: i['image'],
                );
              },
            );
          }).toList(),
        ),
        SizedBox(
          height: getProperWidht(14),
        ),
        Obx(
          () => DotsIndicator(
            dotsCount: 3,
            position: _controller.currentIndex.value.toDouble(),
            decorator: DotsDecorator(
              activeColor: kPrimaryColor,
              size: const Size.square(9.0),
              activeSize: const Size(18.0, 9.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
            ),
          ),
        ),
      ],
    );
  }
}
