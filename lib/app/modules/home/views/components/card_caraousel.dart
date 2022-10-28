import 'package:flutter/cupertino.dart';
import 'package:haiternak_mobile/configs/configs.dart';
import 'package:haiternak_mobile/constants/constants.dart';

class CardCaraousel extends StatelessWidget {
  const CardCaraousel({
    Key? key,
    required this.img,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String title, subtitle, img;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      margin: EdgeInsets.symmetric(
        horizontal: getProperWidht(5),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        color: kPrimaryLightColor,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 6,
            child: Padding(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: primaryTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: getProperWidht(12),
                  ),
                  Text(
                    subtitle,
                    style: primaryTextStyle.copyWith(
                      fontSize: 11,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Image.asset(img),
            ),
          ),
        ],
      ),
    );
  }
}
