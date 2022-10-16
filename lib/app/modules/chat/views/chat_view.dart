import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:haiternak_mobile/app/modules/bottom_nav_bar/views/bottom_nav_bar_view.dart';
import 'package:haiternak_mobile/app/modules/home/views/home_view.dart';
import 'package:haiternak_mobile/configs/configs.dart';
import 'package:haiternak_mobile/constants/constants.dart';
import '../controllers/chat_controller.dart';

class ChatView extends GetView<ChatController> {
  const ChatView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ChatController _controller = Get.put(ChatController());
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                  padding: EdgeInsets.symmetric(vertical: 30.0),
                  color: kPrimaryColor,
                  child: Row(children: [
                    SizedBox(
                      width: getProperWidht(9),
                    ),
                    Center(
                      child: Container(
                        width: getProperWidht(360),
                        child: Center(
                          child: Text(
                            'Pesan Saya',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]))
            ]),
            SizedBox(
              height: getProperWidht(80),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 110),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Image.asset('assets/images/cuate.png')],
              ),
            ),
            SizedBox(
              height: getProperWidht(50),
            ),
            Center(
              child: Text(
                textAlign: TextAlign.center,
                "Opss tidak ada riwayat chat?",
                style: TextStyle(
                  color: Color.fromARGB(255, 16, 91, 153),
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: getProperWidht(20),
            ),
            Center(
              child: Text(
                textAlign: TextAlign.center,
                "Anda belum pernah melakukan konsultasi dengan ahli",
                style: TextStyle(
                  color: Color.fromARGB(255, 117, 117, 117),
                  fontWeight: FontWeight.w300,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: getProperWidht(30),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(50),
                child: Container(
                  width: getProperWidht(300),
                  height: getProperHeight(getProperWidht(50)),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(HomeView());
                    }, // masih direct ke home
                    child: Text(
                      'Konsultasi Sekarang',
                      style: whiteTextStyle.copyWith(
                        fontWeight: bold,
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
