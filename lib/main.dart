import 'package:flutter/material.dart';
import 'package:ashar_portfolio/Views/SplashScreenScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Muhammad Ashar',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Ubuntu'),
      home: const SplashScreenScreen(),
    );
  }
}
