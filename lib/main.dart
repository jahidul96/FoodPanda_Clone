import 'package:flutter/material.dart';
import 'package:foodpanda/screens/cart_screen.dart';
import 'package:foodpanda/screens/cuisin_item_page.dart';
import 'package:foodpanda/screens/food_delivery_screen.dart';
import 'package:foodpanda/screens/home.dart';
import 'package:foodpanda/screens/resturent_details.dart';
import 'package:foodpanda/screens/search_screen.dart';
import 'package:foodpanda/screens/user_location.dart';
import 'package:foodpanda/utils/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.primaryColor,
          titleTextStyle: TextStyle(
            color: AppColors.whiteColor,
          ),
        ),
      ),
      routes: {
        UserLocation.routeName: (context) => const UserLocation(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        SearchScreen.routeName: (context) => const SearchScreen(),
        CuisinItemScreen.routeName: (context) => const CuisinItemScreen(),
        FoodDeliveryScreen.routeName: (context) => const FoodDeliveryScreen(),
        ResturentDetails.routeName: (context) => const ResturentDetails(),
        CartScreen.routeName: (context) => const CartScreen()
      },
      home: const UserLocation(),
    );
  }
}
