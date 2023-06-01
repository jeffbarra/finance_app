import 'package:finance_app/data/invst_data.dart';
import 'package:finance_app/pages/navigation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => InvstData(),
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Navigation(),
      ),
    );
  }
}
