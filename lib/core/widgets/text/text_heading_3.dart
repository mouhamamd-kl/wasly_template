import 'package:flutter/material.dart';
import 'package:wasly_template/core/styles/custom_responsive_text_styles.dart';
import 'package:wasly_template/wasly_template.dart';

class TextHeading3 extends StatelessWidget {
  const TextHeading3({
    super.key,
    required this.text,
    this.textAlign = TextAlign.center,
  });
  final String text;
  final TextAlign textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: CustomResponsiveTextStyles.headingH3.copyWith(
        color: AppColors.textPrimaryBase,
      ),
      textAlign: textAlign,
    );
  }
}