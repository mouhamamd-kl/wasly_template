import 'package:flutter/material.dart';
import 'package:wasly_template/core/widgets/text/text_button_4.dart';
import 'package:wasly_template/wasly_template.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final VoidCallback onClick;
  final double radius;
  final Color color;
  const CustomTextButton({
    Key? key,
    required this.text,
    required this.onClick,
    this.radius = 20.0,
    this.color = AppColors.backgroundLight,
    this.textColor = AppColors.textPrimaryBase,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(color),
        elevation: WidgetStateProperty.all<double>(0),
        padding: WidgetStateProperty.all<EdgeInsets>(
          const EdgeInsets.symmetric(vertical: 20.0, horizontal: 79.0),
        ),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(radius), // Set border radius here
          ),
        ),
      ),
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
