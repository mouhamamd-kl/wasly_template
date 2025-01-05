import 'package:flutter/material.dart';

class CustomBorderRadius {
  static BorderRadius defaultBorderRadius({
    double borderRadius = 20.0,
  }) {
    return BorderRadius.all(Radius.circular(borderRadius));
  }

  static BorderRadius phoneDropDownBorder() {
    return BorderRadius.only(
      topLeft: Radius.circular(20),
      topRight: Radius.circular(20),
    );
  }

  static BorderRadius phonFieldBorder() {
    return BorderRadius.only(
      topLeft: Radius.circular(0),
      topRight: Radius.circular(0),
      bottomLeft: Radius.circular(20),
      bottomRight: Radius.circular(20),
    );
  }
}
