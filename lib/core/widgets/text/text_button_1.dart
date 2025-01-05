import 'package:flutter/material.dart';
import 'package:wasly_template/core/styles/custom_responsive_text_styles.dart';
import 'package:wasly_template/wasly_template.dart';

class TextButton1 extends StatelessWidget {
  const TextButton1({super.key, required this.text, required this.color});
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: CustomResponsiveTextStyles.buttonText4.copyWith(
        color: color,
      ),
    );
  }
}
