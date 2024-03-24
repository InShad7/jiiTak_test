
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, this.title, this.color, this.fontsize});

  final title;
  final color;
  final fontsize;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: color,
        fontSize: fontsize.toDouble(),
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
