import 'package:flutter/material.dart';
import 'package:foodpanda/screens/search_screen.dart';
import 'package:foodpanda/utils/app_colors.dart';

class FlexibleAppBar extends StatelessWidget {
  double searchBarWidth;
  String placeholderText;
  bool IconShow;
  FlexibleAppBar({
    super.key,
    required this.searchBarWidth,
    required this.placeholderText,
    this.IconShow = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SearchScreen.routeName);
      },
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: searchBarWidth,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.search,
                          color: Colors.black54,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          placeholderText,
                          style: const TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                IconShow
                    ? Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                            child: Icon(
                          Icons.list,
                          size: 22,
                          color: AppColors.primaryColor,
                        )),
                      )
                    : Container(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
