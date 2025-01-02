import 'package:flutter/material.dart';
import 'package:wasly_template/wasly_template.dart';

class CustomOutlineInputBorder {
  static OutlineInputBorder defaultBorder({
    Color borderColor = AppColors.strokColor,
    double borderRadius = 20.0,
    BorderRadius? border,
  }) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: borderColor),
      borderRadius: border ?? BorderRadius.all(Radius.circular(borderRadius)),
    );
  }

  static OutlineInputBorder focusedBorder({
    BorderRadius? border,
  }) {
    return defaultBorder(borderColor: AppColors.primaryBase, border: border);
  }

  static OutlineInputBorder errorBorder({
    BorderRadius? border,
  }) {
    return defaultBorder(borderColor: AppColors.errorBase, border: border);
  }

  static OutlineInputBorder focusedErrorBorder({
    BorderRadius? border,
  }) {
    return defaultBorder(borderColor: AppColors.errorDark, border: border);
  }
}
