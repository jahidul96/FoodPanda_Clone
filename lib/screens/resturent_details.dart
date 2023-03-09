// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:foodpanda/data/restaurent_item_data.dart';
import 'package:foodpanda/models/resttaurent_item_model.dart';
import 'package:foodpanda/utils/app_colors.dart';
import 'package:foodpanda/utils/network_images.dart';
import 'package:foodpanda/widgets/product_details.dart';
import 'package:foodpanda/widgets/text_comp.dart';

class ResturentDetails extends StatefulWidget {
  static const routeName = "restaurentdetails";
  const ResturentDetails({
    super.key,
  });

  @override
  _ResturentDetailsState createState() => _ResturentDetailsState();
}

class _ResturentDetailsState extends State<ResturentDetails> {
  final List<GlobalKey> categories = [
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
  ];
  late ScrollController scrollCont;
  BuildContext? tabContext;

  @override
  void initState() {
    scrollCont = ScrollController();
    scrollCont.addListener(changeTabs);
    super.initState();
  }

  changeTabs() {
    late RenderBox box;

    for (var i = 0; i < categories.length; i++) {
      box = categories[i].currentContext!.findRenderObject() as RenderBox;
      Offset position = box.localToGlobal(Offset.zero);

      if (scrollCont.offset >= position.dy)
        // ignore: curly_braces_in_flow_control_structures
        DefaultTabController.of(tabContext!)!.animateTo(
          i,
          duration: Duration(milliseconds: 100),
        );
    }
  }

  scrollTo(int index) async {
    scrollCont.removeListener(changeTabs);
    final categorie = categories[index].currentContext!;
    await Scrollable.ensureVisible(
      categorie,
      duration: const Duration(milliseconds: 600),
    );
    scrollCont.addListener(changeTabs);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Builder(
        builder: (BuildContext context) {
          tabContext = context;
          return Scaffold(
            appBar: AppBar(
              leading: const BackButton(color: Colors.white),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: AppColors.whiteColor,
                  ),
                )
              ],
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextComp(
                    text: "Seven Days",
                    fontweight: FontWeight.bold,
                    color: AppColors.whiteColor,
                  ),
                  const SizedBox(height: 5),
                  TextComp(
                    text: "delivery in 40-50 min",
                    fontweight: FontWeight.normal,
                    size: 12,
                    color: AppColors.whiteColor,
                  ),
                ],
              ),
              bottom: TabBar(
                isScrollable: true,
                indicatorColor: AppColors.whiteColor,
                indicatorWeight: 3,
                indicatorSize: TabBarIndicatorSize.label,
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                unselectedLabelStyle: TextStyle(
                  fontWeight: FontWeight.normal,
                ),
                tabs: const [
                  Tab(child: Text('Burger')),
                  Tab(child: Text('Biryani')),
                  Tab(child: Text('Sea Food')),
                  Tab(child: Text('Cravings')),
                  Tab(child: Text('Desert')),
                  Tab(child: Text('Others')),
                ],
                onTap: (int index) => scrollTo(index),
              ),
            ),
            body: SingleChildScrollView(
              controller: scrollCont,
              child: Column(
                children: [
                  ItemTitle('Burger', 0),
                  convertResItemToList(ResturentItems.firstdata),
                  ItemTitle('Biryani', 1),
                  convertResItemToList(ResturentItems.secondata),
                  ItemTitle('Sed Food', 2),
                  convertResItemToList(ResturentItems.thirddata),
                  ItemTitle('Cravings', 3),
                  convertResItemToList(ResturentItems.firstdata),
                  ItemTitle('Desert', 4),
                  convertResItemToList(ResturentItems.firstdata),
                  ItemTitle('Others', 5),
                  convertResItemToList(ResturentItems.firstdata),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  convertResItemToList(List<ResturentItemModel> items) {
    return Column(
      children: items.map((item) => ItemContent(item)).toList(),
    );
  }

  Future showProductDetails() {
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.75,
          color: Colors.white,
          child: ProductDetailsComp(),
        );
      },
    );
  }

  Widget ItemContent(ResturentItemModel item) {
    return Column(
      children: [
        ListTile(
          onTap: showProductDetails,
          title: Text(item.name),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.desc,
                  style: const TextStyle(fontSize: 13),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Text(
                    item.price,
                    style: const TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          trailing: Image.network(item.img),
          contentPadding: const EdgeInsets.all(15),
        ),
        const Divider(),
      ],
    );
  }

  Widget ItemTitle(String titulo, int index) {
    return Padding(
      key: categories[index],
      padding: const EdgeInsets.only(top: 24),
      child: Column(
        children: [
          ListTile(
            title: Text(
              titulo,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
