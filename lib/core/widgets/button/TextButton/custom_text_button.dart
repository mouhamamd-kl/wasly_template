import 'package:flutter/material.dart';
import 'package:wasly_template/core/widgets/text/text_button_4.dart';
import 'package:wasly_template/wasly_template.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final VoidCallback? onClick;
  final double radius;
  final Color color;
  final EdgeInsetsGeometry? padding;
  const CustomTextButton({
    Key? key,
    required this.text,
    required this.onClick,
    this.radius = 20.0,
    this.color = AppColors.backgroundLight,
    this.textColor = AppColors.textPrimaryBase,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          enableFeedback: true,
          disabledForegroundColor: AppColors.primaryLight,
          disabledBackgroundColor: AppColors.primaryLight,
          backgroundColor: color,
          elevation: (0),
          padding:
              padding ?? EdgeInsets.symmetric(vertical: 20.0, horizontal: 79.0),
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(radius), // Set border radius here
          )),
      onPressed: onClick,
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: TextButton4(
          text: text,
          color: textColor,
        ),
      ),
    );
  }
}
