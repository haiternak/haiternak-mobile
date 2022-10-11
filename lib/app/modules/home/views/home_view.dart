import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:haiternak_mobile/app/modules/bottom_nav_bar/views/bottom_nav_bar_view.dart';
import 'package:haiternak_mobile/app/modules/home/views/disease_track_view.dart';
import 'package:haiternak_mobile/app/modules/home/views/highlight_view.dart';
import 'package:haiternak_mobile/app/routes/app_pages.dart';
import 'package:haiternak_mobile/configs/configs.dart';
import 'package:haiternak_mobile/constants/constants.dart';

import '../controllers/home_controller.dart';
import 'components/card_caraousel.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    HomeController _controller = Get.put(HomeController());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              InfoCase(),
              CarouselScroll(),
              SizedBox(
                height: getProperWidht(18),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Text(
                  'Mungkin kamu butuh',
                  style: primaryTextStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  padding: EdgeInsets.all(getProperWidht(18)),
                  child: Row(
                    children: [
                      RekomendationCard(),
                      RekomendationCard(),
                      RekomendationCard(),
                      RekomendationCard(),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Text(
                  'Highlights',
                  style: primaryTextStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
              ),
              GestureDetector(
                onTap: (() => Get.to(HighlightView())),
                child: Padding(
                  padding: EdgeInsets.all(18),
                  child: Container(
                    height: getProperHeight(140),
                    width: double.infinity,
                    padding: EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      image: DecorationImage(
                        image: AssetImage('assets/images/image.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          flex: 4,
                          child: Text(
                            'Memahami pentingnya vaksinasi Pada Ternak',
                            style: whiteTextStyle.copyWith(
                              fontWeight: semiBold,
                              fontSize: 16,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: kBackgroundColor1,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.arrow_circle_right_outlined,
                              color: kPrimaryColor,
                            ),
                          ),
                        ),
                      ],
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

class RekomendationCard extends StatelessWidget {
  const RekomendationCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: getProperWidht(14)),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: softShadow,
          borderRadius: BorderRadius.circular(16),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Container(
            width: getProperWidht(153),
            height: getProperWidht(184),
            decoration: BoxDecoration(
              color: kBackgroundColor1,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/image.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                )),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(getProperWidht(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Vaksin Salmonela',
                          style: primaryTextStyle,
                        ),
                        Text(
                          'CV. Ayam Sejahtera',
                          style: primaryTextStyle,
                        ),
                        Spacer(),
                        Text(
                          '17 Terjual',
                          style: primaryTextStyle,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CarouselScroll extends StatelessWidget {
  const CarouselScroll({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController _controller = Get.find();
    return Column(
      children: [
        CarouselSlider(
          carouselController: _controller.buttonCarouselController,
          options: CarouselOptions(
            height: getProperWidht(160),
            onPageChanged: (index, reason) => _controller.changePage(index),
            autoPlay: true,
          ),
          items: _controller.corousel.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return CardCaraousel(
                  title: i['title'],
                  subtitle: i['subtitle'],
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

class InfoCase extends StatelessWidget {
  const InfoCase({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(DiseaseTrackView()),
      child: Container(
        margin: EdgeInsets.all(defaultPadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: kPrimaryColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: getProperWidht(8)),
              margin: EdgeInsets.symmetric(horizontal: getProperWidht(18)),
              child: Text(
                'Terakhir Diperbarui 18.25, 25 Sep, 2022',
                style: whiteTextStyle,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: getProperWidht(18),
                vertical: getProperWidht(12),
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                color: kPrimaryLightColor,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sulawesi Selatan',
                          style: primaryTextStyle,
                        ),
                        Text(
                          'Persebaran Penyakit',
                          style: primaryTextStyle.copyWith(
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Kasus persebaran penyakit ternak unggas',
                          style: subtitleTextStyle,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: kSecondaryColor,
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                        // width: getProperWidht(57),
                        // height: getProperWidht(57),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: kBackgroundColor1,
                          shape: BoxShape.circle,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '234',
                              style: primaryTextStyle.copyWith(
                                fontWeight: bold,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              'Kasus',
                              style: subtitleTextStyle.copyWith(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          height: getProperWidht(186),
        ),
        Container(
          height: getProperWidht(164.22),
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: getProperWidht(24),
            vertical: getProperWidht(10),
          ),
          decoration: BoxDecoration(
            color: kPrimaryColor,
            image: DecorationImage(
              image: AssetImage(
                'assets/images/pattern.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SvgPicture.asset('assets/images/logo.svg'),
                  Spacer(),
                  Icon(
                    Icons.message_rounded,
                    color: kBackgroundColor1,
                  ),
                  SizedBox(
                    width: getProperWidht(10),
                  ),
                  Icon(
                    Icons.online_prediction_sharp,
                    color: kBackgroundColor1,
                  ),
                  SizedBox(
                    width: getProperWidht(10),
                  ),
                  Icon(
                    Icons.notifications_outlined,
                    color: kBackgroundColor1,
                  ),
                ],
              ),
              SizedBox(
                height: getProperWidht(18),
              ),
              Text(
                'Hai Friends,',
                style: whiteTextStyle.copyWith(
                  fontSize: 24,
                ),
              ),
              Text(
                'Have Nice Day!',
                style: whiteTextStyle.copyWith(
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          child: GestureDetector(
            onTap: () => Get.toNamed(Routes.UPLOAD),
            child: Container(
              width: getProperWidht(266),
              height: getProperWidht(45),
              padding: EdgeInsets.symmetric(horizontal: getProperWidht(24)),
              decoration: BoxDecoration(
                color: kPrimaryLightColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Periksa ternakmu segera!',
                    style: primaryTextStyle,
                  ),
                  Image.asset('assets/icons/camera_face.png')
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
