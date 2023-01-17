// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:ashar_portfolio/Adapter/AboutMeAdapter/About.dart';
import 'package:ashar_portfolio/Adapter/AboutMeAdapter/Education.dart';
import 'package:ashar_portfolio/Adapter/AboutMeAdapter/Skill.dart';
import 'package:ashar_portfolio/Adapter/AppbarAdapter/MobileAppBar.dart';
import 'package:ashar_portfolio/Adapter/AppbarAdapter/OtherDeviceAppBar.dart';
import 'package:ashar_portfolio/Adapter/MobileDrawerAdapter/MobileDrawer.dart';
import 'package:ashar_portfolio/Adapter/SocialAccounts.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  _AboutMeState createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
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
            scrollDirection: Axis.vertical,
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  width: width,
                  height: hight,
                  padding: const EdgeInsets.all(15),
                  child: ListView(
                    children: [
                      Row(
                        children: [
                          const Flexible(flex: 1, child: SocialAccounts()),
                          Flexible(
                            flex: 10,
                            child: Container(
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                  children: const [
                                    About(),
                                    Education(),
                                    Skill()
                                  ],
                                )),
                          )
                        ],
                      )
                    ],
                  ),
                ))));
  }
}
