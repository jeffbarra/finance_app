import 'package:finance_app/components/widgets/buy_sell_buttons.dart';
import 'package:finance_app/components/widgets/fave_tab_bar.dart';
import 'package:finance_app/models/favorite_stock.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/widgets/search_bar.dart';

class FaveStockPage extends StatefulWidget {
  FavoriteStock favoriteStocks;
  FaveStockPage({super.key, required this.favoriteStocks});

  @override
  State<FaveStockPage> createState() => _FaveStockPageState();
}

class _FaveStockPageState extends State<FaveStockPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      // AppBar
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 25.0),
            child: Icon(Icons.search, color: Colors.black),
          ),
        ],
        backgroundColor: Colors.grey.shade100,
        elevation: 0,
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'lib/assets/images/funds.png',
                  width: 40,
                ),
                const SizedBox(width: 10),
                Text('INVST',
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ],
            ),
          ],
        ),
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                // Ticker
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.favoriteStocks.ticker,
                      style: const TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5.0,
                ),

                // Company Name
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(widget.favoriteStocks.companyName),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                // Stock Price
                Row(
                  children: [
                    Text(widget.favoriteStocks.stockPrice,
                        style: const TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
                const SizedBox(height: 5.0),

                // Price Change
                Row(
                  children: [
                    Text(
                      widget.favoriteStocks.priceChange,
                      style: TextStyle(
                          color: widget.favoriteStocks.priceColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          ),

          // Chart
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(widget.favoriteStocks.chartImagePath, width: 300),
            ],
          ),

          // Tab Bar
          const FaveTabBar(),
          const BuySellButtons(),
        ],
      ),
    );
  }
}
