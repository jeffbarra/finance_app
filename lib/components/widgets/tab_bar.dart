import 'package:finance_app/data/invst_data.dart';
import 'package:finance_app/pages/favorites_tab.dart';
import 'package:finance_app/pages/prices_tab.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyTabBar extends StatefulWidget {
  const MyTabBar({super.key});

  @override
  State<MyTabBar> createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> {
  @override
  Widget build(BuildContext context) {
    return Consumer<InvstData>(
      builder: (context, value, child) => DefaultTabController(
        length: 2, // 3 tabs
        child: Scaffold(
          // TabBar Background Color
          backgroundColor: Colors.grey.shade100,

          body: Column(
            children: const [
              TabBar(
                indicatorColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                labelStyle:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                tabs: [
                  Tab(
                    text: 'Favorites',
                  ),
                  Tab(
                    text: 'Prices',
                  ),
                ],
              ),
              SizedBox(height: 25),
              Expanded(
                child: TabBarView(
                  children: [
                    // "Favorites" Tab
                    FavoritesTab(),

                    // "Prices" Tab
                    PricesTab(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
