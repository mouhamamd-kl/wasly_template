// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:wasly_template/wasly_template.dart';

class SmallCardContainer extends StatelessWidget {
  String name;
  String imagePath;
  String description;
  SmallCardContainer({
    super.key,
    required this.name,
    required this.imagePath,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 120, // Increased height to accommodate the name
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                50,
              ), // Half of the width for a perfect circle
              child: Image.asset(
                imagePath,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: AppColors.surfaceDark.withValues(alpha: 0.5),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                name,
                style: CustomResponsiveTextStyles.paragraph5.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.backgroundAccent,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
