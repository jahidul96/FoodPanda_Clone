import 'package:flutter/material.dart';
import 'package:foodpanda/models/small_models.dart';
import 'package:foodpanda/screens/cuisin_item_page.dart';
import 'package:foodpanda/utils/reusable_styles.dart';
import 'package:foodpanda/widgets/text_comp.dart';

class CuisinTabItem extends StatelessWidget {
  bool singleTab;
  CuisinModel data;
  CuisinTabItem({super.key, required this.data, this.singleTab = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, CuisinItemScreen.routeName);
      },
      child: Container(
        height: 100,
        width: 120,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(7),
          boxShadow: [
            ReusableStyles.smallBoxShadow,
          ],
        ),
        margin: EdgeInsets.only(bottom: 10, right: singleTab ? 10 : 0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(7), topRight: Radius.circular(7)),
              child: Image.network(
                data.img,
                width: double.infinity,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10),
            TextComp(
              text: data.name,
              size: 15,
              fontweight: FontWeight.bold,
            )
          ],
        ),
      ),
    );
  }
}
