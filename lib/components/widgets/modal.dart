import 'package:finance_app/pages/buy_page.dart';
import 'package:finance_app/pages/trade_options_page.dart';
import 'package:flutter/material.dart';
import '../../pages/sell_page.dart';

class Modal extends StatelessWidget {
  const Modal({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: Container(
        color: Colors.grey.shade200,
        height: MediaQuery.of(context).size.height * .40,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.0, bottom: 10),
                    child: Text(
                      'Trade',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),

            // "Buy" Tile
            Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, bottom: 10.0, left: 25.0, right: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ListTile(
                  // Navigate to "Buy Page"
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const BuyPage(),
                      ),
                    );
                  },
                  leading: const Icon(Icons.add_circle_outline_rounded,
                      color: Colors.green),
                  title: const Text(
                    "Buy",
                    style: TextStyle(fontSize: 24),
                  ),
                  trailing: Wrap(
                    spacing: 12, // space between two icons
                    children: const <Widget>[
                      Icon(Icons.arrow_forward_ios_rounded), // icon-1
                    ],
                  ),
                ),
              ),
            ),

            // "Sell" Tile
            Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, bottom: 10.0, left: 25.0, right: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ListTile(
                  // Navigate to "Sell" Page
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const SellPage(),
                      ),
                    );
                  },
                  leading: const Icon(Icons.remove_circle_outline_rounded,
                      color: Colors.red),
                  title: const Text(
                    "Sell",
                    style: TextStyle(fontSize: 24),
                  ),
                  trailing: Wrap(
                    spacing: 12, // space between two icons
                    children: const <Widget>[
                      Icon(Icons.arrow_forward_ios_rounded), // icon-1
                    ],
                  ),
                ),
              ),
            ),

            // "Trade Options" Tile
            Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, bottom: 10.0, left: 25.0, right: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ListTile(
                  // Navigate to "Trade Options" Page
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const TradeOptionsPage(),
                      ),
                    );
                  },
                  leading: const Icon(Icons.swap_vertical_circle_outlined,
                      color: Colors.blue),
                  title: const Text(
                    "Trade Options",
                    style: TextStyle(fontSize: 24),
                  ),
                  trailing: Wrap(
                    spacing: 12, // space between two icons
                    children: const <Widget>[
                      Icon(Icons.arrow_forward_ios_rounded), // icon-1
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
