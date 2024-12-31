import 'package:flutter/material.dart';
import 'package:wasly_template/core/styles/custom_text_styles.dart';

class CustomTheme {
  static ThemeData get theme {
    return ThemeData(
      fontFamily: 'Poppins', // Global font
      textTheme: TextTheme(
        // Heading styles
        headlineLarge: CustomTextStyles.headingH1,
        headlineMedium: CustomTextStyles.headingH2,
        headlineSmall: CustomTextStyles.headingH3,

        // Title styles (you can add more as needed)
        titleLarge: CustomTextStyles.headingH4,
        titleMedium: CustomTextStyles.headingH5,
        titleSmall: CustomTextStyles.headingH6,

        // Body text styles
        bodyLarge: CustomTextStyles.paragraph1,
        bodyMedium: CustomTextStyles.paragraph2,
        bodySmall: CustomTextStyles.paragraph3,

        // Label styles
        labelLarge: CustomTextStyles
            .buttonText1, // You can adjust based on your design needs
        labelMedium: CustomTextStyles.buttonText2,
        labelSmall: CustomTextStyles.buttonText3,
      ),
    );
  }
}
