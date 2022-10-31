import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:haiternak_mobile/app/data/disease_model.dart';
import 'package:haiternak_mobile/app/data/treatment_model.dart';
import 'package:haiternak_mobile/app/modules/chat/views/doctor_list_view.dart';
import 'package:haiternak_mobile/app/modules/upload/controllers/upload_controller.dart';
import 'package:haiternak_mobile/configs/configs.dart';
import 'package:haiternak_mobile/constants/constants.dart';

class DetailView extends GetView<UploadController> {
  const DetailView({required this.diseaseModel, super.key});
  final DiseaseModel diseaseModel;
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
              AppBarCard(title: diseaseModel.title, color: diseaseModel.color,),
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
                      diseaseModel.desc,
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
                    Column(
                      children: diseaseModel.treatmentModel
                          .map((e) => RecomendationCard(treatmentModel: e))
                          .toList(),
                    ),
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
                          Get.to(DoctorListView());
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
    required this.treatmentModel,
  }) : super(key: key);

  final TreatmentModel treatmentModel;

  @override
  Widget build(BuildContext context) {
    UploadController controller = Get.find();
    return Container(
      padding: EdgeInsets.all(getProperWidht(14)),
      margin: EdgeInsets.only(bottom: getProperWidht(14)),
      decoration: BoxDecoration(
        boxShadow: softShadow,
        borderRadius: BorderRadius.circular(24),
        color: kBackgroundColor1,
      ),
      child: ExpansionTile(
        title: Text(
          treatmentModel.title,
          style: primaryTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 16,
          ),
        ),
        iconColor: kPrimaryColor,
        leading: Container(
          height: getProperWidht(55),
          width: getProperWidht(55),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage('assets/images/perawatan-image.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        children: [
          Text(
            treatmentModel.desc,
            style: subtitleTextStyle.copyWith(
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
    // Row(
    //     children: [
    //       Container(
    //         height: getProperWidht(55),
    //         width: getProperWidht(55),
    //         decoration: BoxDecoration(
    //           borderRadius: BorderRadius.circular(20),
    //           image: DecorationImage(
    //             image: AssetImage('assets/images/perawatan-image.png'),
    //             fit: BoxFit.cover,
    //           ),
    //         ),
    //       ),
    //       SizedBox(
    //         width: getProperWidht(14),
    //       ),
    //       Expanded(
    //         flex: 10,
    //         child: Column(
    //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             Text(
    //               treatmentModel.title,
    //               style: primaryTextStyle.copyWith(
    //                 fontWeight: semiBold,
    //                 fontSize: 16,
    //               ),
    //             ),
    //             controller.isExpan.value
    //                 ? Text(
    //                     treatmentModel.desc,
    //                     style: subtitleTextStyle.copyWith(
    //                       fontSize: 14,
    //                     ),
    //                   )
    //                 : Text(
    //                     treatmentModel.desc,
    //                     style: subtitleTextStyle.copyWith(
    //                       fontSize: 14,
    //                     ),
    //                     overflow: TextOverflow.ellipsis,
    //                     maxLines: 1,
    //                   )
    //           ],
    //         ),
    //       ),
    //       Spacer(),
    //       IconButton(
    //         onPressed: () => controller.changeExpan(),
    //         icon: Icon(Icons.keyboard_arrow_down),
    //       ),
    //     ],
    //   ),
  }
}

class AppBarCard extends StatelessWidget {
  const AppBarCard({
    Key? key,
    required this.title,
    required this.color,
  }) : super(key: key);
  final String title;
  final Color color;
  @override
  Widget build(BuildContext context) {
    // UploadController controller = Get.find();

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
                  child: SvgPicture.asset(
                    'assets/icons/virus-icon.svg',
                    color: color,
                  ),
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(25),
                  //   image: DecorationImage(
                  //     image: FileImage(controller.image.value),
                  //     fit: BoxFit.cover,
                  //   ),
                  // ),
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
                        title,
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
