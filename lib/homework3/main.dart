import 'package:flutter/material.dart';
import 'package:sala_it/homework3/screens/cart_screen.dart';
import 'package:sala_it/homework3/screens/home_screen.dart';
import 'package:sala_it/homework3/screens/product_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CartScreen(),
    );
  }
}
