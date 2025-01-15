// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:wasly_template/core/styles/custom_color_styles.dart';
import 'package:wasly_template/core/styles/custom_responsive_text_styles.dart';

class RatingcontainerLight extends StatelessWidget {
  double rate;
  int numberOfRating;
  Color backgroundColor;
  Color foregroundColor;
  double backgroundOpacity;

  RatingcontainerLight({
    super.key,
    required this.rate,
    required this.numberOfRating,
    this.backgroundColor = AppColors.backgroundLight,
    this.foregroundColor = AppColors.textPrimaryBase,
    this.backgroundOpacity = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 78,
      height: 21,
      decoration: BoxDecoration(
        color: backgroundColor.withValues(alpha: backgroundOpacity),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("$rate",
              style: CustomResponsiveTextStyles.fieldText3.copyWith(
                color: AppColors.textPrimaryBase,
              )),
          Icon(
            Icons.star,
            size: 15,
            color: AppColors.ratingColor,
          ),
          Text(
            "($numberOfRating+)",
            style: CustomResponsiveTextStyles.paragraph7.copyWith(
              color: AppColors.textSecondaryBase,
            ),
          ),
        ],
      ),
    );
  }
}
