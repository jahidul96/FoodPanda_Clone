import 'package:flutter/material.dart';
import 'package:foodpanda/utils/app_colors.dart';
import 'package:foodpanda/utils/network_images.dart';
import 'package:foodpanda/widgets/restaurent_display_item.dart';
import 'package:foodpanda/widgets/text_comp.dart';

class CuisinItemScreen extends StatelessWidget {
  static const routeName = "cuisinitemscreen";
  const CuisinItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextComp(
          text: "Biryani",
          size: 17,
          fontweight: FontWeight.bold,
          color: AppColors.whiteColor,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.builder(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemCount: 4,
          itemBuilder: (context, index) {
            return const RestaurentDispayItem();
          },
        ),
      ),
    );
  }
}
