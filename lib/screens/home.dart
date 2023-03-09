import 'package:flutter/material.dart';
import 'package:foodpanda/data/cuisin_data.dart';
import 'package:foodpanda/data/daily_offer_banner.dart';
import 'package:foodpanda/screens/cart_screen.dart';
import 'package:foodpanda/utils/app_colors.dart';
import 'package:foodpanda/widgets/big_banner_button.dart';
import 'package:foodpanda/widgets/cuisin_tab.dart';
import 'package:foodpanda/widgets/daily_offer_comp.dart';
import 'package:foodpanda/widgets/flexible_appbar.dart';
import 'package:foodpanda/widgets/home_appbar_content.dart';
import 'package:foodpanda/widgets/pickup_options.dart';
import 'package:foodpanda/widgets/signin_login_model_content.dart';
import 'package:foodpanda/widgets/text_comp.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "home";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future becomeaPro() {
    return showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      context: context,
      builder: (context) {
        return SignInLoginModelComp();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          // app bar
          SliverAppBar(
            pinned: true,
            floating: true,
            snap: true,
            titleSpacing: 3,
            title: HomeAppBarContent(
              title: "Current Location",
              subTitle: "halishahar, chittagong",
            ),
            expandedHeight: 120,
            flexibleSpace: FlexibleSpaceBar(
              background: FlexibleAppBar(
                searchBarWidth: MediaQuery.of(context).size.width - 40,
                placeholderText: "Search by restaurents",
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, CartScreen.routeName);
                },
                icon: const Icon(Icons.local_mall),
              )
            ],
          ),

          // body content
          SliverList(
            delegate: SliverChildListDelegate(
              [
                // PickupOptions
                Container(
                  color: Colors.grey.shade200,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                    child: PickupOptions(),
                  ),
                ),

                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextComp(
                    text: "Your Daily Deals",
                    size: 18,
                    fontweight: FontWeight.bold,
                  ),
                ),

                // daily offers vertical content
                Padding(
                  padding: const EdgeInsets.only(top: 6, bottom: 20),
                  child: SizedBox(
                    height: 180,
                    child: ListView.builder(
                      padding: const EdgeInsets.only(left: 10),
                      itemCount: bannerData.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: const ClampingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return DailyOfferTabs(
                          img: bannerData[index],
                        );
                      },
                    ),
                  ),
                ),

                // two offer buttons
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Column(
                    children: [
                      BigBannerButton(
                        title: "Become a pro",
                        subtitle: "Unlock exclusive offers",
                        height: 80,
                        shadow: true,
                        onTap: becomeaPro,
                      ),
                      const SizedBox(height: 15),
                      BigBannerButton(
                        title: "Try panda rewards",
                        subtitle: "Earn price and win prizes",
                        height: 80,
                        shadow: true,
                        onTap: becomeaPro,
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // try cuisin text
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: TextComp(
                    text: "Try Cuisin",
                    size: 18,
                    fontweight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 16),

                // two slider
                SizedBox(
                  height: 250,
                  child: ListView.separated(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 10),
                    scrollDirection: Axis.horizontal,
                    itemCount: cuisinesData.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          CuisinTabItem(data: cuisinesData[index]),
                          CuisinTabItem(data: cuisinesDataTwo[index]),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: AppColors.primaryColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextComp(
                    text: "Login/Register",
                    color: Colors.white,
                    fontweight: FontWeight.bold,
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            Column(
              children: [
                ListTile(
                  leading: Icon(Icons.settings),
                  horizontalTitleGap: 0,
                  title: TextComp(
                    text: "Settings",
                    fontweight: FontWeight.bold,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.details),
                  horizontalTitleGap: 0,
                  title: TextComp(
                    text: "Details",
                    fontweight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
