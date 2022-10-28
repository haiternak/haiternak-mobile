import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:haiternak_mobile/app/data/disease_model.dart';
import 'package:haiternak_mobile/app/modules/chat/views/doctor_list_view.dart';
import 'package:haiternak_mobile/app/modules/upload/controllers/upload_controller.dart';
import 'package:haiternak_mobile/app/modules/upload/views/detail_view.dart';
import 'package:haiternak_mobile/configs/configs.dart';
import 'package:haiternak_mobile/constants/constants.dart';

class ResultView extends GetView<UploadController> {
  const ResultView({super.key});

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
            child: SvgPicture.asset('assets/icons/link-icon.svg',
                width: getProperWidht(44)),
          ),
        ],
        backgroundColor: kPrimaryColor,
        toolbarHeight: getProperWidht(86),
      ),
      body: SafeArea(
          child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(defaultPadding),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              controller.title.value == 'Healthy'
                  ? SvgPicture.asset(
                      'assets/images/success-state.svg',
                    )
                  : ResultContent(),
              Column(
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
            ],
          ),
        ),
      )),
    );
  }
}

class ResultContent extends StatelessWidget {
  const ResultContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UploadController controller = Get.find();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Prediksi Penyakit',
          style: primaryTextStyle.copyWith(fontWeight: bold, fontSize: 18),
        ),
        SizedBox(
          height: getProperWidht(5),
        ),
        Text(
          'Berikut penyakit dari hasil analisis gambar Klik penyakit untuk mengetahui lebih lanjut',
          style: primaryTextStyle.copyWith(fontSize: 14),
        ),
        SizedBox(
          height: getProperWidht(14),
        ),
        Column(
          children: controller.listDisease
              .map(
                (e) => DiseaseCard(
                  diseaseModel: e,
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}

class DiseaseCard extends StatelessWidget {
  const DiseaseCard({
    Key? key,
    required this.diseaseModel,
  }) : super(key: key);
  final DiseaseModel diseaseModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(
        getProperWidht(12),
      ),
      margin: EdgeInsets.only(bottom: getProperWidht(14)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: kSecondaryColor,
        ),
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: getProperHeight(getProperWidht(56)),
            child: ElevatedButton(
              onPressed: () {
                Get.to(DetailView(
                  diseaseModel: diseaseModel,
                ));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Opacity(
                    opacity: 0,
                    child: Icon(Icons.arrow_forward),
                  ),
                  Text(
                    diseaseModel.title,
                    style: whiteTextStyle.copyWith(
                      fontSize: 18,
                    ),
                  ),
                  Icon(Icons.keyboard_arrow_right_outlined),
                ],
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: kPrimaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          SizedBox(
            height: getProperWidht(14),
          ),
          Row(
            children: [
              Container(
                width: getProperWidht(56),
                height: getProperWidht(56),
                padding: EdgeInsets.all(getProperWidht(10)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kPrimaryLightColor,
                ),
                child: SvgPicture.asset(
                  'assets/icons/virus-icon.svg',
                  color: Colors.red,
                ),
              ),
              SizedBox(
                width: getProperWidht(10),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        diseaseModel.desc,
                        style: primaryTextStyle.copyWith(fontSize: 14),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: getProperWidht(7),
                width: getProperWidht(7),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kAlert,
                ),
              ),
              SizedBox(
                width: getProperWidht(4),
              ),
              Text(
                diseaseModel.status,
                style: primaryTextStyle.copyWith(
                  color: kAlert,
                  fontSize: 10,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
