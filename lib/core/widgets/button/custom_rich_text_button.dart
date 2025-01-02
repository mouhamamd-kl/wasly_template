import 'package:flutter/material.dart';
import 'package:wasly_template/core/styles/custom_color_styles.dart';
import 'package:wasly_template/core/styles/custom_responsive_text_styles.dart';

class CustomRichTextButton extends StatelessWidget {
  const CustomRichTextButton({
    super.key,
    required this.firstText,
    required this.secondText,
    required this.onPressed,
  });
  final String firstText;
  final String secondText;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text.rich(TextSpan(
        text: firstText,
        style: CustomResponsiveTextStyles.headingH9.copyWith(
          color: AppColors.textPrimaryBase,
        ),
        children: [
          TextSpan(
            text: secondText,
            style: CustomResponsiveTextStyles.headingH9.copyWith(
              color: AppColors.primaryBase,
            ),
          ),
        ],
      )),
    );
  }
}
