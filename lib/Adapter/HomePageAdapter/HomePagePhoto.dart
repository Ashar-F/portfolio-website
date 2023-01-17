// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:flutter/material.dart';

import '../../Variable.dart';

class HomePagePhoto extends StatefulWidget {
  const HomePagePhoto({super.key});

  @override
  _HomePagePhotoState createState() => _HomePagePhotoState();
}

class _HomePagePhotoState extends State<HomePagePhoto> {
  @override
  Widget build(BuildContext context) {
    var borderColor = Colors.white;
    var backgroundColor = Colors.transparent;
    return Transform.rotate(
      angle: 0,
      child: FittedBox(
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: backgroundColor,
            border: Border.all(color: borderColor, width: 2),
            image: const DecorationImage(
              image: AssetImage(IMAGE_PATH),
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
            ),
          ),
        ),
      ),
    );
  }
}
