import 'package:flutter/material.dart';

class OrderBookTab extends StatelessWidget {
  const OrderBookTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Left Column
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('3,903'),
                  Text('12,930'),
                  Text('1,430'),
                  Text('178'),
                ],
              ),

              // Middle - Left Column
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '138.92',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.green),
                  ),
                  Text(
                    '139.22',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.green),
                  ),
                  Text(
                    '140.39',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.green),
                  ),
                  Text(
                    '137.83',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.green),
                  ),
                ],
              ),

              // Middle - Left Column
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text(
                    '139.12',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.red),
                  ),
                  Text(
                    '139.33',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.red),
                  ),
                  Text(
                    '140.25',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.red),
                  ),
                  Text(
                    '137.09',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.red),
                  ),
                ],
              ),
              // Middle - Right Column
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text('3,903'),
                  Text('12,930'),
                  Text('1,430'),
                  Text('178'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
