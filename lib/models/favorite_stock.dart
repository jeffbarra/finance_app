import 'package:flutter/material.dart';

class FavoriteStock {
  final String ticker;
  final String companyName;
  final String stockPrice;
  final String priceChange;
  final Color priceColor;
  final String chartImagePath;

  FavoriteStock({
    required this.ticker,
    required this.companyName,
    required this.stockPrice,
    required this.priceChange,
    required this.priceColor,
    required this.chartImagePath,
  });
}
