import 'package:flutter/material.dart';
import 'package:foodpanda/utils/app_colors.dart';
import 'package:foodpanda/widgets/custome_button.dart';
import 'package:foodpanda/widgets/text_comp.dart';

class SignInLoginModelComp extends StatelessWidget {
  const SignInLoginModelComp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextComp(
              text: "Join as a member!.",
              size: 18,
              fontweight: FontWeight.bold,
              align: TextAlign.center,
            ),
            const SizedBox(height: 15),
            CustomeButton(
              text: "Signin",
              onPressed: () {},
              backgroundColor: AppColors.primaryColor,
              textColor: AppColors.whiteColor,
            ),
            const SizedBox(height: 10),
            CustomeButton(
              text: "Login",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
