import 'package:flutter/material.dart';

class CustomButtomWidget extends StatelessWidget {
  final Color color;
  final String title;
  final VoidCallback onTap;
  final Color textColor;
  const CustomButtomWidget({
    Key? key,
    required this.color,
    required this.onTap,
    required this.textColor,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
              fontSize: 18
            ),
          ),
        ),
      ),
    );
  }
}
