import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:haiternak_mobile/app/modules/onboarding/controllers/onboarding_controller.dart';
import 'package:haiternak_mobile/configs/configs.dart';
import 'package:haiternak_mobile/constants/constants.dart';

class LeftButton extends StatelessWidget {
  const LeftButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    OnboardingController controller = Get.find();

    return GestureDetector(
      onTap: () => controller.leftTap(),
      child: Obx(
        () => Container(
          width: getProperWidht(100),
          padding: EdgeInsets.symmetric(
            vertical: getProperWidht(14),
          ),
          decoration: BoxDecoration(
            color: kPrimaryLightColor,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(14),
              topRight: Radius.circular(14),
            ),
          ),
          child: Center(
            child: Text(
              controller.currentIndex.value == 0 ? 'SKIP' : 'BACK',
              style: primaryTextStyle.copyWith(
                color: kSecondaryColor,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
