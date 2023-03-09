import 'package:flutter/material.dart';
import 'package:foodpanda/screens/resturent_details.dart';
import 'package:foodpanda/widgets/text_comp.dart';

import '../utils/app_colors.dart';

class RestaurentDispayItem extends StatelessWidget {
  double size;
  bool restaurentShow;
  bool horizontal;
  RestaurentDispayItem({
    super.key,
    this.size = double.infinity,
    this.restaurentShow = false,
    this.horizontal = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, ResturentDetails.routeName);
      },
      child: Container(
        width: size,
        margin: EdgeInsets.only(bottom: 15, right: horizontal ? 10 : 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // image content
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    "https://s23209.pcdn.co/wp-content/uploads/2015/12/IMG_0318edit.jpg",
                    width: size,
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

                // conditinal minute show
                restaurentShow
                    ? Container()
                    : Positioned(
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
            Container(
              width: size,
              child: Row(
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
            ),

            const SizedBox(height: 3),
            restaurentShow
                ? Container()
                : Row(
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
      ),
    );
  }
}
