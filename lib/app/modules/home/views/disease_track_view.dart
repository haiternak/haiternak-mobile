import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:haiternak_mobile/app/data/disease_model.dart';
import 'package:haiternak_mobile/app/modules/upload/controllers/upload_controller.dart';
import 'package:haiternak_mobile/app/modules/upload/views/detail_view.dart';
import 'package:haiternak_mobile/app/modules/upload/views/result_view.dart';
import 'package:haiternak_mobile/app/routes/app_pages.dart';
import 'package:haiternak_mobile/configs/configs.dart';
import 'package:haiternak_mobile/constants/constants.dart';

import '../controllers/home_controller.dart';

class DiseaseTrackView extends GetView<HomeController> {
  String selectedCurrency = 'Weekly';

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    Get.put(UploadController());
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
                                'Terakhir Diperbarui 17.35, 8 Nov 2023',
                                style: subtitleTextStyle.copyWith(
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: getProperWidht(24),
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
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
                              RoundedCard(
                                title: '1. Salmonella',
                                jumlah: '495 kasus',
                              ),
                              RoundedCard(
                                title: '2. NewCastle',
                                jumlah: '310 kasus',
                                press: () {
                                  Get.to(
                                    DetailView(
                                      diseaseModel:
                                          DiseaseModel.listNewCastle[0],
                                    ),
                                  );
                                },
                              ),
                              RoundedCard(
                                title: '3. Infeksi Parasit',
                                jumlah: '195 kasus',
                              ),
                              RoundedCard(
                                title: '4. Gumboro Disease',
                                jumlah: '150 kasus',
                              ),
                              RoundedCard(
                                title: '5. Coccidiosis',
                                jumlah: '120 kasus',
                                press: () {
                                  Get.to(
                                    DetailView(
                                      diseaseModel: DiseaseModel.listCocci[0],
                                    ),
                                  );
                                },
                              ),
                              RoundedCard(
                                title: '6. Avian Influenza',
                                jumlah: '105 kasus',
                              ),
                              RoundedCard(
                                title: '7. Marek\'s Disease',
                                jumlah: '85 kasus',
                              ),
                              RoundedCard(
                                title: '8. Fowl Cholera',
                                jumlah: '72 kasus',
                              ),
                              RoundedCard(
                                title: '9. Infectious Bronchitis',
                                jumlah: '65 kasus',
                              ),
                              RoundedCard(
                                title: '10. Mycoplasma',
                                jumlah: '53 kasus',
                              ),
                              RoundedCard(
                                title: '11. Eimeria Infection',
                                jumlah: '45 kasus',
                              ),
                              RoundedCard(
                                title: '12. Fowl Pox',
                                jumlah: '40 kasus',
                              ),
                              RoundedCard(
                                title: '13. Infectious Coryza',
                                jumlah: '35 kasus',
                              ),
                              RoundedCard(
                                title: '14. Aspergillosis',
                                jumlah: '30 kasus',
                              ),
                              RoundedCard(
                                title: '15. Colibacillosis',
                                jumlah: '25 kasus',
                              ),
                            ],
                          ),
                        ),
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
    required this.title,
    required this.jumlah,
    this.press,
    Key? key,
  }) : super(key: key);

  final String title;
  final String jumlah;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press ??
          () {
            Get.to(
              DetailView(
                diseaseModel: DiseaseModel.listSalmonella[0],
              ),
            );
          },
      child: Container(
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
              title,
              style: primaryTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 16,
              ),
            ),
            Text(
              jumlah,
              style: subtitleTextStyle.copyWith(
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
