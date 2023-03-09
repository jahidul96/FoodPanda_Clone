import 'package:flutter/material.dart';
import 'package:foodpanda/utils/app_colors.dart';
import 'package:foodpanda/widgets/text_comp.dart';

class CartScreen extends StatefulWidget {
  static const routeName = "cartscreen";
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextComp(
          text: "Cart",
          color: AppColors.whiteColor,
          size: 18,
          fontweight: FontWeight.bold,
        ),
      ),
      body: Center(
        child: TextComp(text: "Not Implimented yet"),
      ),
    );
  }
}
