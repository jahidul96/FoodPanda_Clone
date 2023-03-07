import 'package:flutter/material.dart';
import 'package:foodpanda/utils/app_colors.dart';

class CustomeButton extends StatelessWidget {
  dynamic text;
  Color textColor;
  Color backgroundColor;
  Function()? onPressed;

  CustomeButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor = Colors.white,
    this.textColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            side: const BorderSide(
              color: AppColors.primaryColor,
              width: .8,
              style: BorderStyle.solid,
            )),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
