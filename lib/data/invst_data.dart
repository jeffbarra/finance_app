import 'package:finance_app/models/favorite_stock.dart';
import 'package:flutter/material.dart';

import '../models/top_movers.dart';

class InvstData extends ChangeNotifier {
  ////////////////////////////////////////////////////////////  LISTS  ////////////////////////////////////////////////////////////

  final List<FavoriteStock> _favoriteStocks = [
    FavoriteStock(
        ticker: 'AAPL',
        companyName: 'Apple',
        stockPrice: '\$139.82',
        priceChange: '-2.29%',
        priceColor: Colors.red,
        chartImagePath: 'lib/assets/images/stock-chart.png'),
    FavoriteStock(
        ticker: 'TSLA',
        companyName: 'Tesla',
        stockPrice: '\$150.92',
        priceChange: '+3.42%',
        priceColor: Colors.green,
        chartImagePath: 'lib/assets/images/stock-chart.png'),
    FavoriteStock(
        ticker: 'NFLX',
        companyName: 'Netflix',
        stockPrice: '\$287.31',
        priceChange: '+3.31%',
        priceColor: Colors.green,
        chartImagePath: 'lib/assets/images/stock-chart.png'),
    FavoriteStock(
        ticker: 'MSFT',
        companyName: 'Microsoft',
        stockPrice: '\$244.82',
        priceChange: '+0.33%',
        priceColor: Colors.green,
        chartImagePath: 'lib/assets/images/stock-chart.png'),
    FavoriteStock(
        ticker: 'DIS',
        companyName: 'Disney',
        stockPrice: '\$90.33',
        priceChange: '-3.42%',
        priceColor: Colors.red,
        chartImagePath: 'lib/assets/images/stock-chart.png'),
    FavoriteStock(
        ticker: 'AMZN',
        companyName: 'Amazon',
        stockPrice: '\$86.22',
        priceChange: '-5.45%',
        priceColor: Colors.red,
        chartImagePath: 'lib/assets/images/stock-chart.png'),
  ];

  final List<TopMovers> _topMovers = [
    TopMovers(
        logoImagePath: 'lib/assets/images/meta-logo.png',
        ticker: 'META',
        companyName: 'Meta',
        priceChange: '+7.42%',
        priceColor: Colors.green,
        chartImagePath: 'lib/assets/images/stock-chart.png'),
    TopMovers(
        logoImagePath: 'lib/assets/images/ford-logo.png',
        ticker: 'F',
        companyName: 'Ford',
        priceChange: '-7.09%',
        priceColor: Colors.red,
        chartImagePath: 'lib/assets/images/stock-chart.png'),
    TopMovers(
        logoImagePath: 'lib/assets/images/apple-logo.png',
        ticker: 'APPL',
        companyName: 'Apple',
        priceChange: '-2.29%',
        priceColor: Colors.red,
        chartImagePath: 'lib/assets/images/stock-chart.png'),
    TopMovers(
        logoImagePath: 'lib/assets/images/netflix-logo.png',
        ticker: 'NFLX',
        companyName: 'Netflix',
        priceChange: '+3.31%',
        priceColor: Colors.green,
        chartImagePath: 'lib/assets/images/stock-chart.png'),
  ];

  ////////////////////////////////////////////////////////////  GETTERS  ////////////////////////////////////////////////////////////

  List<FavoriteStock> get favoriteStocks => _favoriteStocks;

  List<TopMovers> get topMovers => _topMovers;

  ////////////////////////////////////////////////////////////  ADDERS  ////////////////////////////////////////////////////////////

  void addFavoriteStock(String ticker, String companyName, String stockPrice,
      String priceChange, Color priceColor, String chartImagePath) {
    _favoriteStocks.add(
      FavoriteStock(
          ticker: ticker,
          companyName: companyName,
          stockPrice: stockPrice,
          priceChange: priceChange,
          priceColor: priceColor,
          chartImagePath: chartImagePath),
    );

    notifyListeners();
  }

  void addTopMovers(String logoImagePath, String ticker, String companyName,
      String priceChange, Color priceColor, String chartImagePath) {
    _topMovers.add(
      TopMovers(
          logoImagePath: logoImagePath,
          ticker: ticker,
          companyName: companyName,
          priceChange: priceChange,
          priceColor: priceColor,
          chartImagePath: chartImagePath),
    );

    notifyListeners();
  }

  ////////////////////////////////////////////////////////////  REMOVERS  ////////////////////////////////////////////////////////////

  void removeFavoriteStock(String ticker, String companyName, String stockPrice,
      String priceChange, Color priceColor, String chartImagePath) {
    _favoriteStocks.remove(
      FavoriteStock(
          ticker: ticker,
          companyName: companyName,
          stockPrice: stockPrice,
          priceChange: priceChange,
          priceColor: priceColor,
          chartImagePath: chartImagePath),
    );

    notifyListeners();
  }

  void removeTopMovers(String logoImagePath, String ticker, String companyName,
      String priceChange, Color priceColor, String chartImagePath) {
    _topMovers.remove(
      TopMovers(
          logoImagePath: logoImagePath,
          ticker: ticker,
          companyName: companyName,
          priceChange: priceChange,
          priceColor: priceColor,
          chartImagePath: chartImagePath),
    );

    notifyListeners();
  }
}
