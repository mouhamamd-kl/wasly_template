import 'package:flutter/material.dart';

class AppShadows {
  static const Color appBgColor = Color(0xFFEEF2FA);
  static const Color appDarkBgColor = Color.fromRGBO(33, 38, 46, 1);

  static const Color bottomNavColor = Color.fromRGBO(33, 38, 46, 1);
  static const Color favoriteProductBackground = Color(0xFF4187FF);
  static const Color favoriteProductNameText = Color(0xFFEEF2FA);
  static const Color favoriteProductTypeText = Color(0xFF21262E);

  static const Color normalProductBackground = Color(0xFFEEF2FA);
  static const Color normalProductTypeText = Color(0xFF21262E);
  static const Color normalProductNameText = Color(0xFF4187FF);

  // Shadows
  static const BoxShadow favoriteShadow1 = BoxShadow(
    color: Color(0xFFFFFFFF),
    offset: Offset(-4, -2),
    blurRadius: 16,
    spreadRadius: 0,
  );

  static const BoxShadow favoriteShadow2 = BoxShadow(
    color: Color.fromRGBO(136, 165, 191, 0.48),
    offset: Offset(4, 2),
    blurRadius: 16,
    spreadRadius: 0,
  );

  static final List<BoxShadow> favoriteCombinedShadows = [
    favoriteShadow1,
    favoriteShadow2,
  ];

  static const BoxShadow normalShadow1 = BoxShadow(
    color: Color(0x7A88A5BF),
    offset: Offset(4, 2),
    blurRadius: 16,
    spreadRadius: 0,
  );

  static const BoxShadow normalShadow2 = BoxShadow(
    color: Color(0xFFFFFFFF),
    offset: Offset(-4, -2),
    blurRadius: 16,
    spreadRadius: 0,
  );

  static final List<BoxShadow> normalCombinedShadows = [
    normalShadow1,
    normalShadow2,
  ];

  static final List<BoxShadow> outerLightBoxShadow = [];

  static final List<BoxShadow> outerDarkBoxShadow = [
    const BoxShadow(
      color: Colors.white, // Soft shadow
      offset: Offset(-4, -2),
      spreadRadius: 0, // Shadow position
      blurRadius: 16, // Shadow blur
    ),
    const BoxShadow(
      color: Color.fromRGBO(136, 165, 191, 0.48), // Soft shadow
      offset: Offset(4, 2),
      spreadRadius: 0, // Shadow position
      blurRadius: 16,
    ),
  ];
}
