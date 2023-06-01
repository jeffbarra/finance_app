import 'package:finance_app/components/tiles/stock_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/widgets/search_bar.dart';

class BuyPage extends StatelessWidget {
  const BuyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
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

      // Search Bar
      body: Column(
        children: [
          const SearchBar(),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text('Buy Stocks', style: TextStyle(fontSize: 22)),
              ],
            ),
          ),

          // Stock Tiles (Scrollable)
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: const [
                StockTile(
                  logoImagePath: 'lib/assets/images/airbnb-logo.png',
                  companyName: 'Airbnb',
                  ticker: 'ABNB',
                ),
                StockTile(
                  logoImagePath: 'lib/assets/images/google-logo.png',
                  companyName: 'Alphabet',
                  ticker: 'GOOG',
                ),
                StockTile(
                  logoImagePath: 'lib/assets/images/amazon-logo.png',
                  companyName: 'Amazon',
                  ticker: 'AMZN',
                ),
                StockTile(
                  logoImagePath: 'lib/assets/images/apple-logo.png',
                  companyName: 'Apple',
                  ticker: 'AAPL',
                ),
                StockTile(
                  logoImagePath: 'lib/assets/images/disney-logo.png',
                  companyName: 'Disney',
                  ticker: 'DIS',
                ),
                StockTile(
                  logoImagePath: 'lib/assets/images/ebay-logo.png',
                  companyName: 'eBay',
                  ticker: 'EBAY',
                ),
                StockTile(
                  logoImagePath: 'lib/assets/images/intuit-logo.png',
                  companyName: 'Intuit',
                  ticker: 'INTU',
                ),
                StockTile(
                  logoImagePath: 'lib/assets/images/meta-logo.png',
                  companyName: 'Meta',
                  ticker: 'META',
                ),
                StockTile(
                  logoImagePath: 'lib/assets/images/microsoft-logo.png',
                  companyName: 'Microsoft',
                  ticker: 'MSFT',
                ),
                StockTile(
                  logoImagePath: 'lib/assets/images/moderna-logo.png',
                  companyName: 'Moderna',
                  ticker: 'MRNA',
                ),
                StockTile(
                  logoImagePath: 'lib/assets/images/netflix-logo.png',
                  companyName: 'Netflix',
                  ticker: 'NFLX',
                ),
                StockTile(
                  logoImagePath: 'lib/assets/images/tesla-logo.png',
                  companyName: 'Tesla',
                  ticker: 'TSLA',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
