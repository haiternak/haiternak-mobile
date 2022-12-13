import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:haiternak_mobile/app/modules/bottom_nav_bar/views/bottom_nav_bar_view.dart';
import 'package:haiternak_mobile/app/modules/market_place/components/card_caraousel_market.dart';
import 'package:haiternak_mobile/app/modules/market_place/views/market_detail.dart';
import 'package:haiternak_mobile/configs/configs.dart';

import '../../../../constants/constants.dart';
import '../controllers/MarketController.dart';

class MarketView extends GetView<MarketController> {
  @override
  Widget build(BuildContext context) {
    MarketController controller = Get.put(MarketController());
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
                          width: 300.0,
                          child: Center(
                            child: Text(
                              'Hai-Market',
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

              CustomMarket(
                feed:
                    'Kualitas Merupakan Prioritas Utama Kami\ndengan menggunakan teknologi\npembibitan berbasis penelitian',
                img: 'assets/images/docci.jpg',
              ),
              SizedBox(
                height: getProperWidht(18),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Text(
                  'DOC PREMIUM',
                  style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      color: kPrimaryTextColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10.0),
                child: Text(
                  'Memilih penjual bibit ayam yang baik juga sangat penting dalam pemilihan DOC ayam Broiler maupun petelur. Perawatan ayam indukan akan mempengaruhi kualitas DOC yang anda beli dan produk yang akan dihasilkannya',
                  style: primaryTextStyle.copyWith(
                      fontSize: 12, color: kSecondaryColor),
                ),
              ),
              GestureDetector(
                onTap: () => Get.to(MarketDetail()),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18),
                  child: Row(
                    children: [
                      Text(
                        'Learn More',
                        style: primaryTextStyle.copyWith(
                            fontSize: 16,
                            color: kPrimaryColor,
                            fontWeight: semiBold),
                      ),
                      SizedBox(
                        width: 4.0,
                      ),
                      Icon(
                        Icons.arrow_circle_right_outlined,
                        color: kPrimaryColor,
                        size: 16.0,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: getProperWidht(18),
              ),
              GestureDetector(
                onTap: () => Get.to(MarketDetail()),
                child: CarouselScroll2(),
              ),
              SizedBox(
                height: getProperWidht(18),
              ),

              CustomMarket(
                feed:
                    'Temukan Kebutuhan Ternak\ndengan mudah, efisien dan\nterjangkau',
                img: 'assets/images/bg-market1.png',
              ),
              SizedBox(
                height: getProperWidht(18),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Text(
                  'COMFEED',
                  style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      color: kPrimaryTextColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10.0),
                child: Text(
                  'Pemberian pakan yang tepat dan berkualitas dapat Meningkatkan potensi keunggulan pada ternak yang dipelihara dan meningkatkan hasil produksi',
                  style: primaryTextStyle.copyWith(
                      fontSize: 12, color: kSecondaryColor),
                ),
              ),
              GestureDetector(
                onTap: () => Get.to(MarketDetail()),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18),
                  child: Row(
                    children: [
                      Text(
                        'Learn More',
                        style: primaryTextStyle.copyWith(
                            fontSize: 16,
                            color: kPrimaryColor,
                            fontWeight: semiBold),
                      ),
                      SizedBox(
                        width: 4.0,
                      ),
                      Icon(
                        Icons.arrow_circle_right_outlined,
                        color: kPrimaryColor,
                        size: 16.0,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: getProperWidht(18),
              ),
              GestureDetector(
                onTap: () => Get.to(MarketDetail()),
                child: CarouselScroll(),
              ),
              SizedBox(
                height: getProperWidht(18),
              ),
              CustomMarket(
                  feed:
                      'Menjaga kesehatan ternak dengan memenuhi kebutuhan bersama HaiTernak',
                  img: 'assets/images/bg-market2.png'), // Custom market 2
              SizedBox(
                height: getProperWidht(18),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Text(
                  'VITAMIN',
                  style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      color: kPrimaryTextColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10.0),
                child: Text(
                  'Pemberian Vitamin akan mempercepat pertumbuhan dan perkembangan juga dapat menurunkan proporsi biaya pakan serta meningkatkan kualitas daging ternak',
                  style: primaryTextStyle.copyWith(
                      fontSize: 12, color: kSecondaryColor),
                ),
              ),
              GestureDetector(
                onTap: () => Get.to(MarketDetail()),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18),
                  child: Row(
                    children: [
                      Text(
                        'Learn More',
                        style: primaryTextStyle.copyWith(
                            fontSize: 16,
                            color: kPrimaryColor,
                            fontWeight: semiBold),
                      ),
                      SizedBox(
                        width: 4.0,
                      ),
                      Icon(
                        Icons.arrow_circle_right_outlined,
                        color: kPrimaryColor,
                        size: 16.0,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: getProperWidht(18),
              ),
              GestureDetector(
                onTap: () => Get.to(MarketDetail()),
                child: CarouselScroll(),
              ),
              SizedBox(
                height: getProperWidht(18),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBarView(),
    );
  }
}

class CustomMarket extends StatelessWidget {
  CustomMarket({required this.feed, required this.img});

  final String feed;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          height: getProperWidht(186),
        ),
        Container(
          height: getProperWidht(418.22),
          width: double.infinity,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            image: DecorationImage(
              image: AssetImage(
                img,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10.0),
                child: SvgPicture.asset('assets/images/hai-letter.svg'),
              ),
              Container(
                width: 380.0,
                height: 100.0,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 5.0),
                  child: Text(
                    feed,
                    style: primaryTextStyle.copyWith(
                        fontSize: 18,
                        color: kPrimaryLightColor,
                        height: 1.4,
                        fontWeight: semiBold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CarouselScroll extends StatelessWidget {
  const CarouselScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MarketController controller = Get.find();
    return Column(
      children: [
        CarouselSlider(
          carouselController: controller.buttonCarouselController,
          options: CarouselOptions(
            height: getProperWidht(160),
            onPageChanged: (index, reason) => controller.changePage(index),
            autoPlay: true,
          ),
          items: controller.korosal.map((i) {
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
            position: controller.currentIndex.value.toDouble(),
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

class CarouselScroll2 extends StatelessWidget {
  const CarouselScroll2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MarketController controller = Get.find();
    return Column(
      children: [
        CarouselSlider(
          carouselController: controller.buttonCarouselController,
          options: CarouselOptions(
            height: getProperWidht(160),
            onPageChanged: (index, reason) => controller.changePage(index),
            autoPlay: true,
          ),
          items: controller.dockorosal.map((i) {
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
            position: controller.currentIndex.value.toDouble(),
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
