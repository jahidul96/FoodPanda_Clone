import 'package:flutter/material.dart';
import 'package:foodpanda/widgets/flexible_appbar.dart';
import 'package:foodpanda/widgets/home_appbar_content.dart';
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
            titleSpacing: 6,
            title: const HomeAppBarContent(),
            expandedHeight: 120,
            flexibleSpace: const FlexibleSpaceBar(
              background: FlexibleAppBar(),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_basket),
              )
            ],
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            ListTile(
              title: Text("hell"),
            ),
            ListTile(
              title: Text("hell"),
            ),
            ListTile(
              title: Text("hell"),
            ),
            ListTile(
              title: Text("hell"),
            ),
            ListTile(
              title: Text("hell"),
            ),
            ListTile(
              title: Text("hell"),
            ),
            ListTile(
              title: Text("hell"),
            ),
            ListTile(
              title: Text("hell"),
            ),
            ListTile(
              title: Text("hell"),
            ),
            ListTile(
              title: Text("hell"),
            ),
            ListTile(
              title: Text("hell"),
            ),
            ListTile(
              title: Text("hell"),
            ),
            ListTile(
              title: Text("hell"),
            ),
            ListTile(
              title: Text("hell"),
            ),
            ListTile(
              title: Text("hell"),
            ),
            ListTile(
              title: Text("hell"),
            ),
            ListTile(
              title: Text("hell"),
            ),
            ListTile(
              title: Text("hell"),
            ),
          ])),
        ],
      ),
      drawer: Drawer(),
    );
  }
}
