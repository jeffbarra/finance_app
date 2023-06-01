import 'package:finance_app/components/widgets/search_bar.dart';
import 'package:finance_app/components/widgets/tab_bar.dart';
import 'package:flutter/material.dart';

class TradePage extends StatefulWidget {
  const TradePage({super.key});

  @override
  State<TradePage> createState() => _TradePageState();
}

class _TradePageState extends State<TradePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Search Bar
        const SearchBar(),

        // Header
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.all(25.0),
              child: Text(
                'Trade',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),

        // "Favorites" & "Prices" TabBar
        const Expanded(
          child: MyTabBar(),

          // "Sort By" Row
        ),
      ],
    );
  }
}
