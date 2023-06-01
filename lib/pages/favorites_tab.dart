import 'package:finance_app/data/invst_data.dart';
import 'package:finance_app/models/favorite_stock.dart';
import 'package:finance_app/pages/fave_stock_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/tiles/favorites.dart';

class FavoritesTab extends StatelessWidget {
  const FavoritesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<InvstData>(
      builder: (context, value, child) => Expanded(
        child: ListView.builder(
          itemCount: value.favoriteStocks.length,
          itemBuilder: (context, index) {
            FavoriteStock individualFavoriteStock = value.favoriteStocks[index];

            return FavoritesTile(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => FaveStockPage(
                      favoriteStocks: individualFavoriteStock,
                    ),
                  ),
                );
              },
              favoriteStock: individualFavoriteStock,
              // onTap: () => {},
              // deleteFunction: (context) => deleteAppointment(index),
            );
          },
        ),
      ),
    );
  }
}
