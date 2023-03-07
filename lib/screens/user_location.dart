import 'package:flutter/material.dart';
import 'package:foodpanda/utils/app_colors.dart';
import 'package:foodpanda/widgets/custome_button.dart';
import 'package:foodpanda/widgets/text_comp.dart';

class UserLocation extends StatefulWidget {
  const UserLocation({super.key});
  static const routeName = "userlocation";

  @override
  State<UserLocation> createState() => _UserLocationState();
}

class _UserLocationState extends State<UserLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(height: 200),
                  Image.asset(
                    "assets/images/marker.png",
                    width: 70,
                    height: 70,
                  ),
                  const SizedBox(height: 20),
                  TextComp(
                    text: "Find restaurants and shops near you!",
                    fontweight: FontWeight.bold,
                    size: 25,
                    align: TextAlign.center,
                  ),
                  const SizedBox(height: 15),
                  TextComp(
                    text:
                        "By allowing location accress, you can search for restaurants and shops near you and recive more accurate delivey.",
                    align: TextAlign.center,
                    size: 14,
                  ),
                  Container(),
                ],
              ),
            ),

            // bottom content
            Container(
              width: double.infinity,
              height: 160,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
                color: AppColors.whiteColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomeButton(
                      text: "Allow location acces",
                      backgroundColor: AppColors.primaryColor,
                      textColor: Colors.white,
                    ),
                    const SizedBox(height: 10),
                    CustomeButton(
                      text: "Add location",
                      backgroundColor: AppColors.whiteColor,
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
