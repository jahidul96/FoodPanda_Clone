import 'package:flutter/material.dart';
import 'package:foodpanda/widgets/text_comp.dart';

class HomeAppBarContent extends StatelessWidget {
  const HomeAppBarContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextComp(
          text: "Current Location",
          color: Colors.white,
          fontweight: FontWeight.bold,
        ),
        const SizedBox(
          height: 3,
        ),
        TextComp(
          text: "halishahar a block,chittagong",
          size: 13,
          color: Colors.white,
        )
      ],
    );
  }
}
