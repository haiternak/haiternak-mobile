import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/cupertino.dart';
import 'package:haiternak_mobile/configs/configs.dart';
import 'package:haiternak_mobile/constants/constants.dart';

class PageOnboarding extends StatelessWidget {
  const PageOnboarding({
    Key? key,
    required this.alignment,
    required this.width,
    required this.image,
    required this.title,
    required this.desc,
  }) : super(key: key);

  final Alignment alignment;
  final double width;
  final String image, title, desc;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: alignment,
      children: [
        Container(
          height: getProperWidht(280),
          width: width,
          color: kPrimaryColor,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DelayedDisplay(
              delay: Duration(milliseconds: 100),
              child: Center(
                child: Image.asset(
                  'assets/images/$image.png',
                  width: getProperWidht(180),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: getProperWidht(24),
              ),
              child: Column(
                children: [
                  Text(
                    title,
                    style: primaryTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(
                    height: getProperWidht(10),
                  ),
                  Text(
                    desc,
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
