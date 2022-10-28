import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:haiternak_mobile/configs/configs.dart';
import 'package:haiternak_mobile/constants/constants.dart';

import '../controllers/home_controller.dart';

class HighlightView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(getProperWidht(180)), // Set this height
        child: SafeArea(child: ImageAppBar()),
      ),
      body: Container(
        padding: EdgeInsets.all(defaultPadding),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Bercak putih (White Spot) ini muncul karena adanya proses penghilangan kadar garam dan mineral (demineralisasi) pada jaringan keras gigi akibat plak dan sisa makanan yang menumpuk. Jika dibiarkan terus menerus, bercak putih akan berubah menjadi bercak kecoklatan yang menyebar dan membentuk lubang pada gigi.',
                style: primaryTextStyle.copyWith(
                  fontSize: 14,
                ),
                textAlign: TextAlign.justify,
              ),
              Container(
                height: getProperWidht(266),
                padding: EdgeInsets.all(14),
                margin: EdgeInsets.symmetric(vertical: getProperWidht(24)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kBackgroundColor1,
                  boxShadow: softShadow,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/image.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                'Pemberian vaksin dapat dilakukan sendiri oleh peternak atau dengan bantuan penyuluh pertanian setempat. Untuk mendapatkan vaksin, hubungi petugas Resor Peternakan atau poskeswan setempat, Dinas Peternakan, atau langsung datangi toko obat ternak',
                style: primaryTextStyle.copyWith(
                  fontSize: 14,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ImageAppBar extends StatelessWidget {
  const ImageAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
            'assets/images/image.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                iconSize: getProperWidht(44),
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icons/back-icon.svg',
                ),
              ),
              IconButton(
                iconSize: getProperWidht(44),
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icons/link-icon.svg',
                ),
              ),
            ],
          ),
          SizedBox(
            height: getProperWidht(18),
          ),
          Text(
            'Memahami Pentingnya Vaksinasi Pada Ternak',
            style: whiteTextStyle.copyWith(
              fontSize: 20,
              fontWeight: medium,
            ),
          ),
        ],
      ),
    );
  }
}
