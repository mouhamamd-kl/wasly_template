import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class PageModel {
  final String title;
  final String bodyText;
  final String imagePath;
  final Color titleHighlightColor;
  final Color titleOriginalColor;
  final TextStyle titleStyle;
  final TextStyle bodyStyle;
  final PageDecoration pageDecoration;

  PageModel({
    required this.title,
    required this.bodyText,
    required this.imagePath,
    required this.titleHighlightColor,
    required this.titleOriginalColor,
    required this.titleStyle,
    required this.bodyStyle,
    required this.pageDecoration,
  });
}
