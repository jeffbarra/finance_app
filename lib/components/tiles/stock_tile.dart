import 'package:flutter/material.dart';

class StockTile extends StatelessWidget {
  final String logoImagePath;
  final String companyName;
  final String ticker;

  const StockTile(
      {super.key,
      required this.logoImagePath,
      required this.companyName,
      required this.ticker});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 5.0, bottom: 5.0, left: 25.0, right: 25.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: ListTile(
          onTap: () {},
          leading: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                logoImagePath,
                width: 25,
              ),
            ],
          ),
          title: Row(
            children: [
              Text(
                companyName,
              ),
              const SizedBox(width: 10.0),
              Text(ticker, style: const TextStyle(color: Colors.grey)),
            ],
          ),
          trailing: Wrap(
            spacing: 12, // space between two icons
            children: const <Widget>[
              Icon(Icons.arrow_forward_ios_rounded), // icon-1
            ],
          ),
        ),
      ),
    );
  }
}
