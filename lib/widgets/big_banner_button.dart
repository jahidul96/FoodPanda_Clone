import 'package:flutter/material.dart';
import 'package:foodpanda/utils/network_images.dart';
import 'package:foodpanda/utils/reusable_styles.dart';
import 'package:foodpanda/widgets/text_comp.dart';

import '../utils/app_colors.dart';

class BigBannerButton extends StatelessWidget {
  String title;
  String subtitle;
  double height;
  double titleSize;
  bool shadow;

  BigBannerButton({
    super.key,
    required this.title,
    required this.subtitle,
    required this.height,
    this.titleSize = 17,
    this.shadow = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: shadow
            ? [
                ReusableStyles.smallBoxShadow,
              ]
            : [],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextComp(
                  text: title,
                  size: titleSize,
                  fontweight: FontWeight.bold,
                ),
                const SizedBox(height: 5),
                TextComp(
                  text: subtitle,
                  size: 12,
                )
              ],
            ),
          ),
          Container(
            width: 120,
            height: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              image: DecorationImage(
                image: NetworkImage(
                  bannerImg,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
