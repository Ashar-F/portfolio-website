// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:ashar_portfolio/Adapter/AppbarAdapter/MobileAppBar.dart';
import 'package:ashar_portfolio/Adapter/AppbarAdapter/OtherDeviceAppBar.dart';
import 'package:ashar_portfolio/Adapter/HomePageAdapter/Introduction.dart';
import 'package:ashar_portfolio/Adapter/MobileDrawerAdapter/MobileDrawer.dart';
import 'package:ashar_portfolio/Adapter/SocialAccounts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late double hight, width;
  @override
  Widget build(BuildContext context) {
    hight = MediaQuery.of(context).size.height > 600
        ? MediaQuery.of(context).size.height
        : 600;
    width = MediaQuery.of(context).size.width > 300
        ? MediaQuery.of(context).size.width
        : 300;
    return Scaffold(
      drawer: width < 600 ? const MobileDrawer() : Container(),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: width < 600 ? const MobileAppBar() : const OtherDeviceAppBar(),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: const EdgeInsets.all(10),
            width: width,
            height: hight,
            // ignore: avoid_unnecessary_containers
            child: Container(
                child: ListView(
              children: [
                Row(
                  children: [
                    const Flexible(flex: 1, child: SocialAccounts()),
                    Flexible(
                      flex: 10,
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        child: const Introduction(),
                      ),
                    )
                  ],
                )
              ],
            )),
          ),
        ),
      ),
    );
  }
}
