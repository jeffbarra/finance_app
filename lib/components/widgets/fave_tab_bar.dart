import 'package:finance_app/data/invst_data.dart';
import 'package:finance_app/pages/order_book_tab.dart';
import 'package:finance_app/pages/trade_history_tab.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FaveTabBar extends StatefulWidget {
  const FaveTabBar({super.key});

  @override
  State<FaveTabBar> createState() => _FaveTabBarState();
}

class _FaveTabBarState extends State<FaveTabBar> {
  @override
  Widget build(BuildContext context) {
    return Consumer<InvstData>(
      builder: (context, value, child) => DefaultTabController(
        length: 2, // 3 tabs
        child: Container(
          height: 150,
          // TabBar Background Color
          color: Colors.grey.shade100,

          child: Column(
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
                    text: 'Order Book',
                  ),
                  Tab(
                    text: 'Trade History',
                  ),
                ],
              ),
              SizedBox(height: 25),
              Expanded(
                child: TabBarView(
                  children: [
                    // "Order Book" Tab
                    OrderBookTab(),

                    // "Trade History" Tab
                    TradeHistoryTab(),
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
