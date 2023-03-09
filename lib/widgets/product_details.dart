import 'package:flutter/material.dart';
import 'package:foodpanda/data/restaurent_item_data.dart';
import 'package:foodpanda/utils/app_colors.dart';
import 'package:foodpanda/utils/network_images.dart';
import 'package:foodpanda/widgets/text_comp.dart';

class ProductDetailsComp extends StatelessWidget {
  const ProductDetailsComp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: ListView(
            children: [
              Image.network(
                foodimg,
                width: double.infinity,
                height: 150,
                fit: BoxFit.cover,
              ),
              ListTile(
                contentPadding: const EdgeInsets.all(10),
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: TextComp(
                    text: ResturentItems.firstdata[0].name,
                    fontweight: FontWeight.bold,
                    size: 18,
                  ),
                ),
                subtitle: Text(
                  ResturentItems.firstdata[0].desc,
                ),
                trailing: TextComp(
                  text: ResturentItems.firstdata[0].price,
                  fontweight: FontWeight.bold,
                ),
              ),
              diffrentList(catName: "Griled Full fish", price: 350),
              diffrentList(catName: "Griled Half fish", price: 200),
              diffrentList(catName: "Griled With Gravey", price: 400),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 90,
          color: Colors.grey.shade100,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey.shade300,
                      child: const Icon(Icons.remove),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: TextComp(
                        text: "0",
                        fontweight: FontWeight.bold,
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.grey.shade300,
                      child: const Icon(Icons.add),
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                    minimumSize: const Size(160, 45),
                  ),
                  onPressed: () {},
                  child: TextComp(
                    text: "Add to Cart",
                    color: AppColors.whiteColor,
                    fontweight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget diffrentList({required String catName, required int price}) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Checkbox(
                activeColor: AppColors.primaryColor,
                value: false,
                onChanged: (value) {},
              ),
              TextComp(text: catName),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: TextComp(text: "Tk $price"),
          ),
        ],
      );
}
