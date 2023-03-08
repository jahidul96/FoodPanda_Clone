import 'package:flutter/material.dart';
import 'package:foodpanda/data/search_placeholder_data.dart';
import 'package:foodpanda/utils/app_colors.dart';
import 'package:foodpanda/utils/reusable_styles.dart';
import 'package:foodpanda/widgets/text_comp.dart';

class SearchScreen extends StatefulWidget {
  static const routeName = "searchscreen";
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: AppColors.primaryColor, //change your color here
          ),
          title: Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: searchBar(),
            ),
          ),
          backgroundColor: Colors.white,
          bottom: const TabBar(
            labelPadding: EdgeInsets.only(bottom: 8),
            padding: EdgeInsets.symmetric(horizontal: 50),
            labelColor: AppColors.primaryColor,
            labelStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
            unselectedLabelColor: Colors.grey,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: AppColors.primaryColor,
            indicatorWeight: 3,
            tabs: [
              Text("Restaurents"),
              Text("Shops"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // restaurents tab data
            tabContainer(title: "Restaurents Search"),
            // shops tab data
            tabContainer(title: "Shop Search"),
          ],
        ),
      ),
    );
  }

  Widget searchBar() => Container(
        height: 38,
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(6),
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "search",
            ),
          ),
        ),
      );

  Widget tabContainer({required String title}) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            TextComp(
              text: title,
              size: 20,
              fontweight: FontWeight.bold,
            ),
            Container(
              width: double.infinity,
              height: 250,
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 35,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  crossAxisCount: 4,
                ),
                itemCount: restaurentsSearchPlaceholder.length,
                itemBuilder: (context, index) {
                  return searchTabButton(
                      text: restaurentsSearchPlaceholder[index]);
                },
              ),
            ),
          ],
        ),
      );

  Widget searchTabButton({required String text}) => Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            ReusableStyles.smallBoxShadow,
          ],
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: TextComp(
            text: text,
            size: 13,
            fontweight: FontWeight.bold,
          ),
        ),
      );
}
