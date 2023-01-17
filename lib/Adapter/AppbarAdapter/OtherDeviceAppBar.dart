// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:ashar_portfolio/Views/AboutMe.dart';
import 'package:ashar_portfolio/Views/Experience.dart';
import 'package:ashar_portfolio/Views/Home.dart';
import 'package:ashar_portfolio/Views/Projects.dart';

import '../../Variable.dart';

class OtherDeviceAppBar extends StatefulWidget {
  const OtherDeviceAppBar({super.key});

  @override
  _OtherDeviceAppBarState createState() => _OtherDeviceAppBarState();
}

class _OtherDeviceAppBarState extends State<OtherDeviceAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      leading: Container(
        padding: const EdgeInsets.fromLTRB(7, 15, 0, 15),
        child: Transform.rotate(
          angle: 0,
          child: FittedBox(
            child: Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black26,
                border: Border.all(color: Colors.white38, width: 1),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(IMAGE_PATH),
                ),
              ),
            ),
          ),
        ),
      ),
      actions: [
        Container(
          padding: const EdgeInsets.only(right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FittedBox(
                child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextButton(
                      child: const Text(
                        "   Home   ",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Home()));
                      },
                    )),
              ),
              FittedBox(
                child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextButton(
                      child: const Text(
                        " About Me ",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AboutMe()));
                      },
                    )),
              ),
              FittedBox(
                child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextButton(
                      child: const Text(
                        "Experience",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Experience()));
                      },
                    )),
              ),
              FittedBox(
                child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextButton(
                      child: const Text(
                        "  Project ",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Projects()));
                      },
                    )),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
