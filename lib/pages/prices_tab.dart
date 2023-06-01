import 'package:flutter/material.dart';

class PricesTab extends StatelessWidget {
  const PricesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text(
          'Prices Tab',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ),
    );
  }
}
