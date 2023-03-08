import 'package:flutter/material.dart';
import 'package:foodpanda/screens/food_delivery_screen.dart';
import 'package:foodpanda/utils/app_colors.dart';
import 'package:foodpanda/utils/reusable_styles.dart';
import 'package:foodpanda/widgets/big_banner_button.dart';
import 'package:foodpanda/widgets/text_comp.dart';

class PickupOptions extends StatelessWidget {
  const PickupOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // top big option
        BigBannerButton(
          title: "Food Delivery",
          subtitle: "Best deals on your favorite.",
          height: 150,
          titleSize: 21,
          shadow: false,
          onTap: () {
            Navigator.pushNamed(context, FoodDeliveryScreen.routeName);
          },
        ),

        const SizedBox(height: 10),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            pickupBtn(
              title: "shops",
              subTitle: "Groceries and more",
              height: 130,
            ),
            Column(
              children: [
                pickupBtn(
                  title: "Pick-up",
                  subTitle: "Flat 14% discount",
                  height: 60,
                ),
                const SizedBox(height: 10),
                pickupBtn(
                  title: "Dine-in",
                  subTitle: "Flat 20% discount",
                  height: 60,
                ),
              ],
            )
          ],
        ),
      ],
    );
  }

  Widget pickupBtn({
    required title,
    required subTitle,
    required double height,
  }) =>
      Container(
        width: 155,
        height: height,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextComp(
                text: title,
                size: 17,
                fontweight: FontWeight.bold,
              ),
              const SizedBox(height: 6),
              TextComp(
                text: subTitle,
                size: 12,
              )
            ],
          ),
        ),
      );
}
