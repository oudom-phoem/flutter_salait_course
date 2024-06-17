import 'package:flutter/material.dart';
import 'package:sala_it/homework5/screens/home_screen.dart';
import 'package:sala_it/homework5/screens/order_detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
