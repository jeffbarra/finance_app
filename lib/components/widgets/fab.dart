import 'package:flutter/material.dart';

import 'modal.dart';

class FAB extends StatefulWidget {
  const FAB({super.key});

  @override
  State<FAB> createState() => _FABState();
}

class _FABState extends State<FAB> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25.0, right: 10.0),
      child: SizedBox(
        height: 65,
        width: 65,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {
              // Sliding Up Modal
              _transactionModalBottomSheet(context);
            },
            backgroundColor: Colors.amber,
            child: const Icon(
              Icons.currency_exchange_rounded,
              color: Colors.black,
              size: 30,
            ),
          ),
        ),
      ),
    );
  }

  // Sliding Up Modal Functionality
  void _transactionModalBottomSheet(context) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext buildContext) {
          return const Modal();
        });
  }
}
