import 'package:flutter/material.dart';

class TopMovers {
  final String logoImagePath;
  final String ticker;
  final String companyName;
  final String priceChange;
  final Color priceColor;
  final String chartImagePath;

  TopMovers({
    required this.logoImagePath,
    required this.ticker,
    required this.companyName,
    required this.priceChange,
    required this.priceColor,
    required this.chartImagePath,
  });
}
