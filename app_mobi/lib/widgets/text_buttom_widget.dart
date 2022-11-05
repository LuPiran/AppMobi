import 'package:flutter/material.dart';

class TextButtomWidget extends StatelessWidget {
  final String title;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;
  final VoidCallback onTap;
  const TextButtomWidget({
    Key? key,
    required this.title,
    required this.onTap,
    this.color,
    this.fontSize,
    this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        style: TextStyle(
          color: color,
          fontWeight: fontWeight,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
