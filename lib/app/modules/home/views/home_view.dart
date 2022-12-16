import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:haiternak_mobile/app/modules/bottom_nav_bar/views/bottom_nav_bar_view.dart';
import 'package:haiternak_mobile/app/modules/home/views/components/card-horizontal.dart';
import 'package:haiternak_mobile/app/modules/home/views/disease_track_view.dart';
import 'package:haiternak_mobile/app/modules/home/views/highlight_view.dart';
import 'package:haiternak_mobile/app/routes/app_pages.dart';
import 'package:haiternak_mobile/configs/configs.dart';
import 'package:haiternak_mobile/constants/constants.dart';
import 'package:haiternak_mobile/utils/utils.dart';

import '../controllers/home_controller.dart';
import 'components/card-function.dart';
import 'components/card_caraousel.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
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
                      CardFunction(
                        title: 'Pakan Paylater',
                        imagePath: 'assets/images/rekomcard2.png',
                      ),
                      RekomendationCard(
                        title: 'Lapak Ternak',
                        imagePath: 'assets/images/rekomcard1.png',
                      ),
                      RekomendationCard(
                          title: 'Pencatatan',
                          imagePath: 'assets/images/rekomcard3.png'),
                      RekomendationCard(
                          title: 'Promotion',
                          imagePath: 'assets/images/rekomcard4.png'),
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
              CardHorizontal(
                cta: "Lihat Artikel",
                title: 'Memahami Pentingnya Vaksinasi Pada Ternak',
                img: 'assets/images/image.png',
                tap: (() => Get.to(
                      HighlightView(),
                    )),
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
    required this.title,
    required this.imagePath,
    this.onclick,
  }) : super(key: key);

  final String title;
  final String imagePath;
  final Function()? onclick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Dialogs().dialogEmpty;
      },
      child: Container(
        margin: EdgeInsets.only(right: getProperWidht(14)),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: softShadow,
            borderRadius: BorderRadius.circular(16),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Container(
              width: getProperWidht(133),
              height: getProperWidht(133),
              decoration: BoxDecoration(
                color: kBackgroundColor1,
              ),
              child: GestureDetector(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(imagePath),
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
                            Center(
                              child: Text(
                                title,
                                style: primaryTextStyle,
                              ),
                            ),
                            Spacer(),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
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
    HomeController controller = Get.find();
    return Column(
      children: [
        CarouselSlider(
          carouselController: controller.buttonCarouselController,
          options: CarouselOptions(
            height: getProperWidht(160),
            onPageChanged: (index, reason) => controller.changePage(index),
            autoPlay: true,
          ),
          items: controller.corousel.map((i) {
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
