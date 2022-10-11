import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:haiternak_mobile/app/modules/bottom_nav_bar/views/bottom_nav_bar_view.dart';
import 'package:haiternak_mobile/configs/configs.dart';
import 'package:haiternak_mobile/constants/constants.dart';

import '../controllers/home_controller.dart';
import 'components/card_caraousel.dart';

class DiseaseTrackView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    HomeController _controller = Get.put(HomeController());
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Get.back(),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: kBackgroundColor1,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.arrow_back),
                    ),
                  ),
                  Text(
                    'Disease Track',
                    style: whiteTextStyle.copyWith(
                      fontSize: 18,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: kBackgroundColor1,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.share),
                  ),
                ],
              ),
              SizedBox(
                height: getProperWidht(24),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(defaultPadding),
                  decoration: BoxDecoration(
                    color: kBackgroundColor1,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: softShadow,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Disease Track',
                                style: primaryTextStyle.copyWith(
                                  fontSize: 18,
                                  fontWeight: medium,
                                ),
                              ),
                              Text(
                                'Terakhir Diperbarui 17.35, 27 Sep 2022',
                                style: subtitleTextStyle.copyWith(
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Icon(
                            Icons.location_on_outlined,
                            color: kPrimaryColor,
                          ),
                          Text(
                            'Sulawesi Selatan',
                            style: subtitleTextStyle.copyWith(
                              fontSize: 10,
                              fontWeight: medium,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: getProperWidht(42),
                      ),
                      Container(
                        width: getProperWidht(100),
                        height: getProperWidht(100),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: kSecondaryColor,
                          shape: BoxShape.circle,
                        ),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: kBackgroundColor1,
                            shape: BoxShape.circle,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Weekly',
                                style: subtitleTextStyle.copyWith(
                                  fontSize: 18,
                                ),
                              ),
                              Icon(
                                Icons.arrow_drop_down_outlined,
                                color: kPrimaryColor,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: getProperWidht(12),
                      ),
                      Text(
                        '1000 Kasus',
                        style: subtitleTextStyle.copyWith(
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: getProperWidht(24),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pravalansi Penyakit Tertinggi',
                            style: subtitleTextStyle.copyWith(
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(
                            height: getProperWidht(14),
                          ),
                          RoundedCard(),
                          RoundedCard(),
                          RoundedCard(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RoundedCard extends StatelessWidget {
  const RoundedCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: getProperWidht(10)),
      padding: EdgeInsets.symmetric(
        horizontal: getProperWidht(14),
        vertical: getProperWidht(16),
      ),
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '1. Salmonella',
            style: primaryTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 16,
            ),
          ),
          Text(
            '456+ Kasus',
            style: subtitleTextStyle.copyWith(
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
