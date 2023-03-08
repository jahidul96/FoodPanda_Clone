import 'package:flutter/material.dart';
import 'package:foodpanda/screens/search_screen.dart';

class FlexibleAppBar extends StatelessWidget {
  const FlexibleAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SearchScreen.routeName);
      },
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: const [
                    Icon(
                      Icons.search,
                      color: Colors.black54,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Search nearby restaurents",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
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
