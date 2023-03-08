import 'package:flutter/material.dart';
import 'package:foodpanda/widgets/text_comp.dart';

class HomeAppBarContent extends StatelessWidget {
  String title;
  String subTitle;
  HomeAppBarContent({super.key, required this.subTitle, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextComp(
          text: title,
          color: Colors.white,
          fontweight: FontWeight.bold,
        ),
        const SizedBox(
          height: 3,
        ),
        TextComp(
          text: subTitle,
          size: 13,
          color: Colors.white,
        )
      ],
    );
  }
}
