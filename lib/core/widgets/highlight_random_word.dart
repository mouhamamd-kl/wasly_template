import 'dart:math';
import 'package:flutter/material.dart';

class HighlightRandomWord extends StatelessWidget {
  final String text;
  final Color highlightColor;
  final Color originalColor;
  final TextStyle style;
  final TextAlign textAlign;
  const HighlightRandomWord(
      {Key? key,
      required this.text,
      required this.highlightColor,
      required this.style,
      required this.originalColor,
      required this.textAlign})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Split the string into words
    List<String> words = text.split(' ');
    // Choose a random index to highlight
    Random random = Random();
    int randomIndex = random.nextInt(words.length);

    // Create a list of TextSpan elements, highlighting the random word
    List<TextSpan> textSpans = words.asMap().entries.map((entry) {
      int index = entry.key;
      String word = entry.value;

      // If the current word is the random word, apply the highlight color
      return TextSpan(
        text: word + ' ',
        style: style.copyWith(
          color: index == randomIndex ? highlightColor : originalColor,
        ),
      );
    }).toList();

    // Return a Text widget with the constructed TextSpan
    return RichText(
      textAlign: textAlign,
      text: TextSpan(
        style: style.copyWith(color: originalColor),
        children: textSpans,
      ),
    );
  }
}
