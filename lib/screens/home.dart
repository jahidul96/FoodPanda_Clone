import 'package:flutter/material.dart';
import 'package:foodpanda/utils/app_colors.dart';
import 'package:foodpanda/utils/network_images.dart';
import 'package:foodpanda/widgets/big_banner_button.dart';
import 'package:foodpanda/widgets/daily_offer_comp.dart';
import 'package:foodpanda/widgets/flexible_appbar.dart';
import 'package:foodpanda/widgets/home_appbar_content.dart';
import 'package:foodpanda/widgets/pickup_options.dart';
import 'package:foodpanda/widgets/text_comp.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "home";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            floating: true,
            snap: true,
            titleSpacing: 3,
            title: const HomeAppBarContent(),
            expandedHeight: 120,
            flexibleSpace: const FlexibleSpaceBar(
              background: FlexibleAppBar(),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.local_mall),
              )
            ],
          ),
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
                    size: 20,
                    fontweight: FontWeight.bold,
                  ),
                ),

                // daily offers vertical content
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 20),
                  child: SizedBox(
                    height: 180,
                    child: ListView.builder(
                      padding: const EdgeInsets.only(left: 10),
                      itemCount: 10,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: const ClampingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return const DailyOfferTabs();
                      },
                    ),
                  ),
                ),

                Container(
                  color: Colors.grey.shade200,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 15),
                    child: Column(
                      children: [
                        BigBannerButton(
                          title: "Become a pro",
                          subtitle: "Unlock exclusive offers",
                          height: 80,
                        ),
                        const SizedBox(height: 15),
                        BigBannerButton(
                          title: "Try panda rewards",
                          subtitle: "Earn price and win prizes",
                          height: 80,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      drawer: Drawer(),
    );
  }
}
