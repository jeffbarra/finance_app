import 'package:flutter/material.dart';

class BuySellButtons extends StatefulWidget {
  const BuySellButtons({super.key});

  @override
  State<BuySellButtons> createState() => _BuySellButtonsState();
}

class _BuySellButtonsState extends State<BuySellButtons> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      // "Buy" Button
      padding: const EdgeInsets.only(top: 25.0),
      child: GestureDetector(
        onTap: () => {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 170,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Center(
                  child: Text(
                    'Buy',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
              ),
            ),

            const SizedBox(
              width: 10,
            ),

            // "Sell" Button
            GestureDetector(
              onTap: () => {},
              child: Row(
                children: [
                  Container(
                    width: 170,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Center(
                        child: Text(
                          'Sell',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
