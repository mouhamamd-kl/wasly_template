import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wasly_template/core/styles/custom_text_styles.dart';

class CustomResponsiveTextStyles {
  // Existing heading styles remain unchanged
  static TextStyle headingH1 =
      getResponsiveFont(Get.context!, style: CustomTextStyles.headingH1);

  static TextStyle headingH2 =
      getResponsiveFont(Get.context!, style: CustomTextStyles.headingH2);

  static TextStyle headingH3 =
      getResponsiveFont(Get.context!, style: CustomTextStyles.headingH3);

  static TextStyle headingH4 =
      getResponsiveFont(Get.context!, style: CustomTextStyles.headingH4);

  static TextStyle headingH5 =
      getResponsiveFont(Get.context!, style: CustomTextStyles.headingH5);

  static TextStyle headingH6 =
      getResponsiveFont(Get.context!, style: CustomTextStyles.headingH6);

  static TextStyle headingH7 =
      getResponsiveFont(Get.context!, style: CustomTextStyles.headingH7);

  static TextStyle headingH8 =
      getResponsiveFont(Get.context!, style: CustomTextStyles.headingH8);

  static TextStyle headingH9 =
      getResponsiveFont(Get.context!, style: CustomTextStyles.headingH9);

  static TextStyle headingH10 =
      getResponsiveFont(Get.context!, style: CustomTextStyles.headingH10);

  // New paragraph styles
  static TextStyle paragraph1 =
      getResponsiveFont(Get.context!, style: CustomTextStyles.paragraph1);

  static TextStyle paragraph2 =
      getResponsiveFont(Get.context!, style: CustomTextStyles.paragraph2);

  static TextStyle paragraph3 =
      getResponsiveFont(Get.context!, style: CustomTextStyles.paragraph3);

  static TextStyle paragraph4 =
      getResponsiveFont(Get.context!, style: CustomTextStyles.paragraph4);

  static TextStyle paragraph5 =
      getResponsiveFont(Get.context!, style: CustomTextStyles.paragraph5);

  // Button text styles
  static TextStyle buttonText1 =
      getResponsiveFont(Get.context!, style: CustomTextStyles.buttonText1);

  static TextStyle buttonText2 =
      getResponsiveFont(Get.context!, style: CustomTextStyles.buttonText2);

  static TextStyle buttonText3 =
      getResponsiveFont(Get.context!, style: CustomTextStyles.buttonText3);

  static TextStyle buttonText4 =
      getResponsiveFont(Get.context!, style: CustomTextStyles.buttonText4);

  static TextStyle buttonText5 =
      getResponsiveFont(Get.context!, style: CustomTextStyles.buttonText5);
  // Field text styles
  static TextStyle fieldText1 =
      getResponsiveFont(Get.context!, style: CustomTextStyles.fieldText1);

  static TextStyle fieldText2 =
      getResponsiveFont(Get.context!, style: CustomTextStyles.fieldText2);

  static TextStyle fieldText3 =
      getResponsiveFont(Get.context!, style: CustomTextStyles.fieldText3);

  static TextStyle fieldText4 =
      getResponsiveFont(Get.context!, style: CustomTextStyles.fieldText4);

  static TextStyle getResponsiveFont(BuildContext context,
      {required TextStyle style}) {
    double scaleFactor = getScaleFactor(context);
    double responsiveFontSize = style.fontSize! * scaleFactor;
    double lowerLimit = style.fontSize! * 0.8;
    double upperLimit = style.fontSize! * 1.2;

    return style.copyWith(
      fontSize: responsiveFontSize.clamp(
        lowerLimit,
        upperLimit,
      ),
    );
  }

  static double getScaleFactor(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    if (width < 600) {
      return width / 400;
    } else if (width < 900) {
      return width / 700;
    } else {
      return width / 1000;
    }
  }
}
