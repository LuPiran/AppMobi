

import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String title;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;

  const TextWidget({
    Key? key,
    required this.title,
    this.color,
    this.fontSize,
    this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize
      ),
    );
  }
}
