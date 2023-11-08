import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:haiternak_mobile/app/modules/bottom_nav_bar/views/bottom_nav_bar_view.dart';
import 'package:haiternak_mobile/app/modules/market_place/components/card_caraousel_market.dart';
import 'package:haiternak_mobile/app/modules/market_place/views/market_card.dart';
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
                              'Market',
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
                  Container(
                    margin: EdgeInsets.only(left: 24, right: 24, top: 20),
                    child: Row(
                      children: [
                        Expanded(
                            child: Obx(() => (controller
                                        .dropdownSelectedValue!.value !=
                                    null)
                                ? DropdownButton2(
                                    buttonStyleData: ButtonStyleData(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            border: Border.all(
                                              color: Colors.black38,
                                            ))),
                                    isExpanded: true,
                                    hint: Row(
                                      children: [
                                        Icon(
                                          Icons.search_outlined,
                                          size: 18,
                                        ),
                                        SizedBox(
                                          width: 12,
                                        ),
                                        Text(
                                          'Tentukan Wilayah',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Theme.of(context).hintColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                    value:
                                        controller.dropdownSelectedValue!.value,
                                    onChanged: (value) {
                                      controller.dropdownSelectedValue!.value =
                                          value ?? "";
                                    },
                                    items: controller.dropdownItem
                                        .map((item) => DropdownMenuItem<String>(
                                              value: item,
                                              child: Text(
                                                item,
                                                style: const TextStyle(
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ))
                                        .toList())
                                : SizedBox.shrink())),
                        SizedBox(
                          width: 14,
                        ),
                        Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xff39A2DB),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.location_on_outlined,
                              size: 28,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListView(
                    shrinkWrap: true,
                    padding: EdgeInsets.all(24),
                    children: [
                      MarketCard(),
                      MarketCard(),
                      MarketCard(),
                    ],
                  ),
                ],
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
