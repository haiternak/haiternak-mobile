import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:haiternak_mobile/app/modules/upload/controllers/upload_controller.dart';
import 'package:haiternak_mobile/app/modules/upload/views/result_view.dart';
import 'package:haiternak_mobile/configs/configs.dart';
import 'package:haiternak_mobile/constants/constants.dart';

class DetailView extends GetView<UploadController> {
  const DetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/icons/back-icon.svg',
            width: getProperWidht(44),
          ),
          onPressed: () => Get.back(),
        ),
        centerTitle: true,
        title: Text(
          'Hasil Analisis',
          style: whiteTextStyle,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: getProperWidht(10)),
            child: SvgPicture.asset(
              'assets/icons/link-icon.svg',
              width: getProperWidht(44),
            ),
          ),
        ],
        backgroundColor: kPrimaryColor,
        toolbarHeight: getProperWidht(86),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StackCartd(),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About',
                      style: primaryTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: semiBold,
                      ),
                    ),
                    SizedBox(
                      height: getProperWidht(10),
                    ),
                    Text(
                      'Bercak putih (White Spot) ini muncul karena adanya proses penghilangan kadar garam dan mineral (demineralisasi) pada jaringan keras gigi akibat plak dan sisa makanan yang menumpuk. Jika dibiarkan terus menerus, bercak putih akan berubah menjadi bercak kecoklatan yang menyebar dan membentuk lubang pada gigi.',
                      style: subtitleTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: getProperWidht(18),
                    ),
                    Text(
                      'Rekomendasi Perawatan',
                      style: primaryTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: semiBold,
                      ),
                    ),
                    SizedBox(
                      height: getProperWidht(18),
                    ),
                    RecomendationCard(),
                    RecomendationCard(),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(getProperWidht(24)),
                child: Column(
                  children: [
                    Text(
                      'Ingin Mendiagnosis lebih lanjut?',
                      style: subtitleTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      height: getProperWidht(11),
                    ),
                    Container(
                      width: double.infinity,
                      height: getProperHeight(getProperWidht(56)),
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(ResultView());
                        },
                        child: Text(
                          'Konsultasi dengan Expert',
                          style: whiteTextStyle.copyWith(
                            fontSize: 18,
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RecomendationCard extends StatelessWidget {
  const RecomendationCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(getProperWidht(14)),
      margin: EdgeInsets.only(bottom: getProperWidht(14)),
      decoration: BoxDecoration(
        boxShadow: softShadow,
        borderRadius: BorderRadius.circular(24),
        color: kBackgroundColor1,
      ),
      child: Row(
        children: [
          Container(
            height: getProperWidht(77),
            width: getProperWidht(77),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                image: AssetImage('assets/images/image.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: getProperWidht(14),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Perawatan 1',
                style: primaryTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 19,
                ),
              ),
              Text(
                'Meningkatkan Imun',
                style: subtitleTextStyle.copyWith(
                  fontSize: 14,
                ),
              ),
            ],
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.keyboard_arrow_down),
          ),
        ],
      ),
    );
  }
}

class StackCartd extends StatelessWidget {
  const StackCartd({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          height: getProperWidht(120),
        ),
        Container(
          color: kPrimaryColor,
          height: getProperWidht(70),
          width: double.infinity,
        ),
        Positioned(
          bottom: 0,
          child: Container(
            padding: EdgeInsets.all(getProperWidht(14)),
            width: getProperWidht(319),
            decoration: BoxDecoration(
              color: kBackgroundColor1,
              borderRadius: BorderRadius.circular(28),
              boxShadow: softShadow,
            ),
            child: Row(
              children: [
                Container(
                  height: getProperWidht(77),
                  width: getProperWidht(77),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                      image: AssetImage('assets/images/image.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: getProperWidht(14),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Salmonella',
                        style: primaryTextStyle.copyWith(
                          fontWeight: semiBold,
                          fontSize: 19,
                        ),
                      ),
                      Text(
                        'Salah satu penyakit Unggas',
                        style: subtitleTextStyle.copyWith(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
