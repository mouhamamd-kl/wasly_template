import 'package:flutter/material.dart';
import 'package:wasly_template/wasly_template.dart';

class CustomTextButtonActive extends StatelessWidget {
  final String text;
  final VoidCallback? onClick;
  final double radius;
  final EdgeInsetsGeometry? padding;
  const CustomTextButtonActive({
    Key? key,
    required this.text,
    required this.onClick,
    this.radius = 20.0,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextButton(
      text: text,
      onClick: onClick,
      radius: radius,
      color: AppColors.primaryBase,
      textColor: AppColors.backgroundLight,
      padding: padding,
    );
  }
}
