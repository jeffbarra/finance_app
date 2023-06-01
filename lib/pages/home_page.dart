import 'package:finance_app/data/invst_data.dart';
import 'package:finance_app/models/favorite_stock.dart';
import 'package:finance_app/pages/fave_stock_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/tiles/favorites.dart';
import '../components/tiles/stock_price.dart';
import '../components/tiles/top_movers.dart';
import '../models/top_movers.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<InvstData>(
      builder: (context, value, child) => Column(
        children: [
          const StockPriceTile(
            portfolioValue: '\$10,930.25',
            valueChange: '+1292.32 | 15.39%',
            valueColor: Colors.green,
            chartImagePath: 'lib/assets/images/stock-chart.png',
          ),

          // "Top Movers" Header
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 25.0, bottom: 25.0),
                child: Text(
                  'Top Movers',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),

          // "Top Movers" Tiles
          Container(
            height: 175,
            child: Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: value.topMovers.length,
                itemBuilder: (context, index) {
                  TopMovers individualTopMover = value.topMovers[index];
                  return Padding(
                    padding: index == value.topMovers.length - 1
                        ? const EdgeInsets.fromLTRB(25, 0, 25, 0)
                        : const EdgeInsets.only(left: 25.0),
                    child: TopMoversTile(
                      topMovers: individualTopMover,
                      // onTap: () => {},
                      // deleteFunction: (context) => deleteAppointment(index),
                    ),
                  );
                },
              ),
            ),
          ),

          // "Favorites" Header
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 25.0, top: 25.0, bottom: 25.0),
                child: Text(
                  'Favorites',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),

          // "Favorites" Tiles
          Expanded(
            child: ListView.builder(
              itemCount: value.favoriteStocks
                  .length, // displays the items within the _patients index
              itemBuilder: (context, index) {
                // get individual patient
                FavoriteStock individualFavoriteStock =
                    value.favoriteStocks[index];

                // return that patient as a tile
                return FavoritesTile(
                  favoriteStock: individualFavoriteStock,
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => FaveStockPage(
                                favoriteStocks: individualFavoriteStock,
                              )),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
