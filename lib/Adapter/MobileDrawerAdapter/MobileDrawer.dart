// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:ashar_portfolio/Views/AboutMe.dart';
import 'package:ashar_portfolio/Views/Experience.dart';
import 'package:ashar_portfolio/Views/Home.dart';
import 'package:ashar_portfolio/Views/Projects.dart';

class MobileDrawer extends StatefulWidget {
  const MobileDrawer({super.key});

  @override
  _MobileDrawerState createState() => _MobileDrawerState();
}

class _MobileDrawerState extends State<MobileDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      padding: EdgeInsets.zero,
      color: Colors.black,
      child: ListView(
        children: [
          ListTile(
            leading: const Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: const Text(
              "Home",
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Home()));
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.person,
              color: Colors.white,
            ),
            title: const Text(
              "About",
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AboutMe()));
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.work,
              color: Colors.white,
            ),
            title: const Text(
              "Experience",
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Experience()));
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.article_outlined,
              color: Colors.white,
            ),
            title: const Text(
              "Project",
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Projects()));
            },
          ),
        ],
      ),
    );
  }
}
