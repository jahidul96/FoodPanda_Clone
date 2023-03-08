import 'package:flutter/material.dart';
import 'package:foodpanda/widgets/text_comp.dart';

import '../utils/app_colors.dart';

class RestaurentDispayItem extends StatelessWidget {
  const RestaurentDispayItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: Column(
        children: [
          // image content
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  "https://s23209.pcdn.co/wp-content/uploads/2015/12/IMG_0318edit.jpg",
                  width: double.infinity,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 10,
                child: Container(
                  width: 70,
                  height: 25,
                  decoration: const BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Center(
                    child: TextComp(
                      text: "12 % off",
                      fontweight: FontWeight.bold,
                      color: AppColors.whiteColor,
                      size: 13,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: Container(
                  width: 60,
                  height: 25,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: TextComp(
                      text: "30 min",
                      fontweight: FontWeight.bold,
                      size: 12,
                    ),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 5),

          // descrition
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextComp(
                text: "Sultan E Noddles",
                fontweight: FontWeight.bold,
                size: 14,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    size: 14,
                    color: Colors.orange,
                  ),
                  TextComp(
                    text: " 4 (23)",
                    size: 12,
                    fontweight: FontWeight.bold,
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 3),

          Row(
            children: [
              const Icon(
                Icons.attach_money,
                size: 18,
                color: Colors.grey,
              ),
              TextComp(
                text: "-",
                size: 14,
                color: Colors.grey,
              ),
              const SizedBox(width: 3),
              TextComp(
                text: "200",
                size: 14,
                color: Colors.grey,
              ),
            ],
          ),

          const SizedBox(height: 3),

          //delivery content
          Row(
            children: [
              const Icon(
                Icons.delivery_dining,
                size: 15,
                color: Colors.grey,
              ),
              const SizedBox(width: 3),
              TextComp(
                text: "Tk ",
                size: 13,
                color: Colors.grey,
              ),
              TextComp(
                text: "35",
                size: 13,
                color: Colors.grey,
              ),
              const SizedBox(width: 5),
              TextComp(
                text: "Free delivery above 400 taka.",
                size: 12,
                color: AppColors.primaryColor,
                fontweight: FontWeight.bold,
              ),
            ],
          )
        ],
      ),
    );
  }
}
