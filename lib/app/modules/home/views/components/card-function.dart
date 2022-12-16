import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../configs/configs.dart';
import '../../../../../constants/constants.dart';
import '../../../pakanpaylater/views/pakan.dart';

class CardFunction extends StatelessWidget {
  const CardFunction({
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
      onTap: (() => Get.to(
            Pakan(),
          )),
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
