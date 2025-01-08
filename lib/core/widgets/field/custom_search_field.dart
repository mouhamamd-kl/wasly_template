import 'package:flutter/material.dart';
import 'package:wasly_template/core/styles/custom_color_styles.dart';
import 'package:wasly_template/core/styles/custom_responsive_text_styles.dart';

class CustomSearchField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Widget? prefix;
  final Widget? suffix;
  final Function(String)? onChanged;
  final Color? fillColor;
  final InputBorder? border;
  const CustomSearchField(
      {Key? key,
      required this.controller,
      required this.hintText,
      this.prefix,
      this.suffix,
      this.onChanged,
      this.fillColor,
      this.border})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: CustomResponsiveTextStyles.fieldText2
            .copyWith(color: AppColors.textSecondaryBase),
        border: border ?? InputBorder.none,
        enabledBorder: border ?? InputBorder.none,
        focusedBorder: border ?? InputBorder.none,
        fillColor: fillColor ?? Colors.white,
        filled: true,
        prefixIcon: prefix,
        suffixIcon: suffix,
        contentPadding: EdgeInsets.symmetric(
            vertical: 12.0, horizontal: 16.0), // Adjust this as needed
      ),
      onChanged: onChanged,
    );
  }
}
