import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FloatingIcon extends StatelessWidget {
  final Widget icon;
  final Function()? onPressed;

  const FloatingIcon({
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: Colors.purple,
      child: IconButton(
        icon: icon,
        onPressed: onPressed,
      ),
    );
  }
}
