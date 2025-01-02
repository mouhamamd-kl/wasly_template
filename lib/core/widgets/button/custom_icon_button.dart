import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wasly_template/core/styles/custom_color_styles.dart';
import 'package:wasly_template/core/widgets/text/text_button_4.dart';

class CustomIconButton extends StatelessWidget {
  final String text;
  final String icon;
  final VoidCallback onClick;
  final double radius;

  const CustomIconButton({
    Key? key,
    required this.text,
    required this.icon,
    required this.onClick,
    this.radius = 20.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: WidgetStateProperty.all<double>(0),
        padding: WidgetStateProperty.all<EdgeInsets>(
          const EdgeInsets.symmetric(vertical: 11.0, horizontal: 35.0),
        ),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(radius), // Set border radius here
          ),
        ),
      ),
      onPressed: onClick,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(height: 30, width: 30, icon),
          TextButton4(
            text: text,
            color: AppColors.textPrimaryBase,
          ),
        ],
      ),
    );
  }
}
