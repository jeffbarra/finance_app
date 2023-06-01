import 'package:finance_app/models/favorite_stock.dart';
import 'package:flutter/material.dart';

class FavoritesTile extends StatelessWidget {
  final FavoriteStock favoriteStock;
  void Function()? onTap;

  FavoritesTile({super.key, required this.favoriteStock, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(favoriteStock.ticker,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500)),
                      const SizedBox(height: 10),
                      Text(favoriteStock.companyName,
                          style: const TextStyle(
                              fontSize: 12, color: Colors.grey)),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        favoriteStock.stockPrice,
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        favoriteStock.priceChange,
                        style: TextStyle(
                            fontSize: 12, color: favoriteStock.priceColor),
                      ),
                    ],
                  ),
                  Image.asset(
                    favoriteStock.chartImagePath,
                    width: 50,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
