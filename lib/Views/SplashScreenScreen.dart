// ignore_for_file: file_names, library_private_types_in_public_api

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:ashar_portfolio/Views/Home.dart';

class SplashScreenScreen extends StatefulWidget {
  const SplashScreenScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenScreenState createState() => _SplashScreenScreenState();
}

class _SplashScreenScreenState extends State<SplashScreenScreen> {
  @override
  void initState() {
    super.initState();
    loadWidget();
  }

  loadWidget() {
    var duration = const Duration(seconds: 2);
    return Timer(
        duration,
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const Home())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: const [
              SpinKitThreeBounce(
                color: Colors.yellowAccent,
                size: 30,
              ),
              Text(
                "Stealing Your Data  😉",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  letterSpacing: 2,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
