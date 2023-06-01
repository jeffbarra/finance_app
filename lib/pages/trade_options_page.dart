import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TradeOptionsPage extends StatelessWidget {
  const TradeOptionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 25.0),
            child: Icon(Icons.search, color: Colors.black),
          ),
        ],
        backgroundColor: Colors.grey.shade100,
        elevation: 0,
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'lib/assets/images/funds.png',
                  width: 40,
                ),
                const SizedBox(width: 10),
                Text('INVST',
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
