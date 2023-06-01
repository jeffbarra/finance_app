import 'dart:math';
import 'package:flutter/material.dart';
import '../../models/top_movers.dart';

class TopMoversTile extends StatelessWidget {
  final TopMovers topMovers;

  const TopMoversTile({super.key, required this.topMovers});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
            top: 20.0, bottom: 20.0, left: 25, right: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(topMovers.logoImagePath, width: 30),
                Image.asset(
                  topMovers.chartImagePath,
                  width: 30,
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  topMovers.ticker,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ],
            ),
            const SizedBox(height: 5.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(topMovers.companyName),
              ],
            ),
            const SizedBox(height: 25.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  topMovers.priceChange,
                  style: TextStyle(
                      color: topMovers.priceColor, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
