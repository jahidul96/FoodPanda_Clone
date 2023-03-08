import 'package:flutter/material.dart';
import 'package:foodpanda/data/cuisin_data.dart';
import 'package:foodpanda/data/daily_offer_banner.dart';
import 'package:foodpanda/widgets/cuisin_tab.dart';
import 'package:foodpanda/widgets/daily_offer_comp.dart';
import 'package:foodpanda/widgets/flexible_appbar.dart';
import 'package:foodpanda/widgets/home_appbar_content.dart';
import 'package:foodpanda/widgets/restaurent_display_item.dart';
import 'package:foodpanda/widgets/text_comp.dart';

class FoodDeliveryScreen extends StatefulWidget {
  static const routeName = "fooddeliverypage";
  const FoodDeliveryScreen({super.key});

  @override
  State<FoodDeliveryScreen> createState() => _FoodDeliveryScreenState();
}

class _FoodDeliveryScreenState extends State<FoodDeliveryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // app bar
          SliverAppBar(
            pinned: true,
            floating: true,
            snap: true,
            titleSpacing: 3,
            title: HomeAppBarContent(
                title: "A block Halishahar", subTitle: "Food delivey"),
            expandedHeight: 120,
            flexibleSpace: FlexibleSpaceBar(
              background: FlexibleAppBar(
                searchBarWidth: MediaQuery.of(context).size.width - 90,
                placeholderText: "Search",
                IconShow: true,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.local_mall),
              )
            ],
          ),
          // content
          SliverList(
            delegate: SliverChildListDelegate(
              [
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

                // cuisin slider
                SizedBox(
                  height: 120,
                  child: ListView.builder(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    scrollDirection: Axis.horizontal,
                    itemCount: cuisinesDataTwo.length,
                    itemBuilder: (context, index) {
                      return CuisinTabItem(
                        data: cuisinesDataTwo[index],
                        singleTab: true,
                      );
                    },
                  ),
                ),

                // featured restaurents
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextComp(
                    text: "Featured Restaurents",
                    fontweight: FontWeight.bold,
                    size: 20,
                  ),
                ),
                const SizedBox(height: 6),
                SizedBox(
                  height: 210,
                  child: ListView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    scrollDirection: Axis.horizontal,
                    physics: const ClampingScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return RestaurentDispayItem(
                        size: MediaQuery.of(context).size.width - 80,
                        restaurentShow: true,
                        horizontal: true,
                      );
                    },
                  ),
                ),

                // biryani restaurents
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextComp(
                    text: "gorom gorom Biryani",
                    fontweight: FontWeight.bold,
                    size: 20,
                  ),
                ),
                const SizedBox(height: 6),
                SizedBox(
                  height: 210,
                  child: ListView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    scrollDirection: Axis.horizontal,
                    physics: const ClampingScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return RestaurentDispayItem(
                        size: MediaQuery.of(context).size.width - 80,
                        restaurentShow: true,
                        horizontal: true,
                      );
                    },
                  ),
                ),

                // gorer Kahabar
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextComp(
                    text: "gorer kabar",
                    fontweight: FontWeight.bold,
                    size: 20,
                  ),
                ),
                const SizedBox(height: 6),
                SizedBox(
                  height: 210,
                  child: ListView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    scrollDirection: Axis.horizontal,
                    physics: const ClampingScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return RestaurentDispayItem(
                        size: MediaQuery.of(context).size.width - 80,
                        restaurentShow: true,
                        horizontal: true,
                      );
                    },
                  ),
                ),

                // All Restaurents
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextComp(
                    text: "All Restaurents",
                    fontweight: FontWeight.bold,
                    size: 20,
                  ),
                ),
                ListView.builder(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 10,
                  ),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: const ClampingScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return RestaurentDispayItem(
                      size: double.infinity,
                      restaurentShow: true,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
