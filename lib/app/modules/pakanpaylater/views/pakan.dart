import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
//widgets
import 'package:haiternak_mobile/app/modules/pakanpaylater/components/slider.dart';
import 'package:haiternak_mobile/themes/theme.dart';

import '../../../../utils/utils.dart';
import '../controllers/pakancontroller.dart';

class Pakan extends GetView<PakanController> {
  final double height = window.physicalSize.height;
  final String title;
  final String urlImg;
  final String Img =
      "https://www.thehappychickencoop.com/wp-content/uploads/2019/10/making-your-own-chicken-feed.jpg";

  Pakan(
      {this.title = "Pakan Ayam",
      this.urlImg =
          "https://organicfeeds.com/wp-content/uploads/2021/02/How-to-Choose-the-Right-Chicken-Feed.jpg.webp"});

  @override
  Widget build(BuildContext context) {
    PakanController controller = Get.put(PakanController());
    final List<String> imgList = [urlImg, Img];
    return Scaffold(
        extendBody: true,
        backgroundColor: ArgonColors.bgColorScreen,
        extendBodyBehindAppBar: true,
        body: ListView(children: [
          Container(
              height: 0.15 * height, child: ImageSlider(imgArray: imgList)),
          FractionalTranslation(
            translation: Offset(0.0, -0.05),
            child: Stack(children: [
              Padding(
                padding: const EdgeInsets.only(left: 9.0, right: 9.0),
                child: Container(
                  height: 0.25 * height,
                  child: Card(
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      elevation: 1.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0))),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, bottom: 28.0),
                              child: Text(title,
                                  style: TextStyle(
                                      fontSize: 28.0, color: ArgonColors.text)),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: haiTernakColors.primary,
                                      child: SizedBox(
                                        width: 40,
                                        height: 30,
                                        child: ClipOval(
                                          child: Image.asset(
                                              "assets/images/logo-splash.png"),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10.0),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Hai-Pakan",
                                            style: TextStyle(
                                                color: ArgonColors.text,
                                                fontSize: 14.0)),
                                        Text("Comfeed",
                                            style: TextStyle(
                                                color: ArgonColors.text,
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w200))
                                      ],
                                    ),
                                  ],
                                ),
                                Text("Rp.8999/kg",
                                    style: TextStyle(
                                        color: ArgonColors.text,
                                        fontSize: 18.0))
                              ],
                            ),
                            SizedBox(height: 18),
                            Text("Jumlah",
                                style: TextStyle(
                                    color: ArgonColors.text, fontSize: 16.0)),
                            Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.baseline,
                                    textBaseline: TextBaseline.alphabetic,
                                    children: <Widget>[
                                      Obx(() => Text(
                                            controller.kg.toInt().toString(),
                                            style: TextStyle(
                                                fontSize: 50.0,
                                                fontWeight: FontWeight.w900,
                                                color: haiTernakColors
                                                    .primaryTextColor),
                                          )),
                                      Text(
                                        'Kg',
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          color: Color(0xFF8D8E98),
                                        ),
                                      )
                                    ],
                                  ),
                                  SliderTheme(
                                    data: SliderTheme.of(context).copyWith(
                                      inactiveTrackColor: Colors.black12,
                                      activeTrackColor: Color(0xFF8D8E98),
                                      thumbColor: haiTernakColors.primary,
                                      overlayColor: haiTernakColors.lightColor,
                                      thumbShape: RoundSliderThumbShape(
                                          enabledThumbRadius: 15.0),
                                      overlayShape: RoundSliderOverlayShape(
                                          overlayRadius: 30.0),
                                    ),
                                    child: Obx(() => Slider(
                                          value: controller.kg.toDouble(),
                                          min: 1.0,
                                          max: 100.0,
                                          onChanged: (anu) {
                                            controller.changeberat(anu);
                                            print(anu);
                                          },
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.only(top: 24),
                              child: TextButton(
                                style: TextButton.styleFrom(
                                    textStyle:
                                        TextStyle(color: ArgonColors.white),
                                    backgroundColor: haiTernakColors.primary),
                                onPressed: () {
                                  Dialogbeli().dialogEmpty;
                                  // Respond to button press
                                },
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 16.0,
                                        right: 16.0,
                                        top: 12,
                                        bottom: 12),
                                    child: Text("REQUEST",
                                        style: TextStyle(
                                            color: ArgonColors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16.0))),
                              ),
                            )
                          ],
                        ),
                      )),
                ),
              ),
              FractionalTranslation(
                translation: Offset(-0.08, -0.4),
                child: Align(
                  alignment: Alignment.topRight,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: haiTernakColors.primary,
                    child: IconButton(
                      onPressed: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => Null));
                      },
                      icon: Icon(Icons.message),
                      color: ArgonColors.white,
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ]));
  }
}
