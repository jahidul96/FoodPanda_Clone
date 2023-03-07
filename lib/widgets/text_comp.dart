// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class TextComp extends StatelessWidget {
  dynamic text;
  double size;
  Color color;
  FontWeight fontweight;
  TextAlign align;

  TextComp(
      {super.key,
      required this.text,
      this.color = Colors.black,
      this.size = 16,
      this.fontweight = FontWeight.w500,
      this.align = TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: fontweight,
      ),
      textAlign: align,
    );
  }
}
