import 'package:flutter/material.dart';
import 'package:wasly_template/wasly_template.dart';

class CustomTextFieldStyle {
  static TextStyle defaultTextStyle() {
    return CustomResponsiveTextStyles.fieldText3.copyWith(
      color: AppColors.textPrimaryBase,
    );
  }

  static TextStyle hintTextStyle() {
    return CustomResponsiveTextStyles.fieldText4.copyWith(
      color: AppColors.textSecondaryBase,
    );
  }

  static TextStyle errorTextStyle() {
    return CustomResponsiveTextStyles.fieldText3.copyWith(
      color: AppColors.errorBase,
    );
  }
}
