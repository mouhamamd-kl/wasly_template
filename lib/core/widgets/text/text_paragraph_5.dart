import 'package:flutter/material.dart';
import 'package:wasly_template/core/styles/custom_responsive_text_styles.dart';
import 'package:wasly_template/wasly_template.dart';

class TextParagraph5 extends StatelessWidget {
  const TextParagraph5({
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
      style: CustomResponsiveTextStyles.paragraph5.copyWith(
        color: AppColors.textSecondaryBase,
      ),
      textAlign: textAlign,
    );
  }
}
