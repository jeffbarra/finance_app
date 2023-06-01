import 'package:flutter/material.dart';

class StockPriceTile extends StatelessWidget {
  final String portfolioValue;
  final String valueChange;
  final Color valueColor;
  final String chartImagePath;

  const StockPriceTile(
      {super.key,
      required this.portfolioValue,
      required this.valueChange,
      required this.valueColor,
      required this.chartImagePath});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // Stock Price
                    children: [
                      Text(
                        portfolioValue,
                        style: const TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        valueChange,
                        style: TextStyle(fontSize: 14, color: valueColor),
                      ),
                    ],
                  ),
                  const SizedBox(width: 10.0),
                  // Stock Chart
                  Image.asset(chartImagePath, width: 100),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
