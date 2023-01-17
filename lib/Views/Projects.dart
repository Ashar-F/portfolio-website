// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:ashar_portfolio/Adapter/AppbarAdapter/MobileAppBar.dart';
import 'package:ashar_portfolio/Adapter/AppbarAdapter/OtherDeviceAppBar.dart';
import 'package:ashar_portfolio/Adapter/MobileDrawerAdapter/MobileDrawer.dart';
import 'package:ashar_portfolio/Adapter/ProjectsAdapter/ProjectsAdapter.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  late double hight, width;
  Future count(int n) async {
    return Future.delayed(Duration(seconds: n));
  }

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
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
            height: hight,
            width: width,
            child: ListView(
              children: [
                Center(
                    child: AnimatedTextKit(
                  isRepeatingAnimation: false,
                  animatedTexts: [
                    TypewriterAnimatedText("My Projects",
                        speed: const Duration(milliseconds: 80),
                        textStyle: TextStyle(
                            fontSize: width > 600 ? 40 : 27,
                            color: Colors.white,
                            letterSpacing: 4),
                        textAlign: TextAlign.start),
                  ],
                )),
                const SizedBox(
                  height: 15,
                ),
                FutureBuilder(
                    future: count(2),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return const ProjectAdapter(
                          ProjectName: "Al-Rasheed-Management(Collaborator)",
                          ProjectLogoPath: 'assets/images/iv.png',
                          ProjectDescription:
                              "A web application of plot managemnet system  \nfor managing the all the data of plots",
                          ProjectDescriptionForMobile:
                              "A web application of plot managemnet system .\nfor managing the all the data of plots",
                          FirstTechnology: 'Flutter',
                          SecondTechnology: ' , NodeJS ',
                          ThirdTechnology: ' , GetX',
                          ForthTechnology: ' , REST API ',
                          ProjectUrl: "https://github.com/Muhammad-Ashar650",
                        );
                      }
                      return Container();
                    }),
                const SizedBox(
                  height: 12,
                ),
                FutureBuilder(
                    future: count(3),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return const ProjectAdapter(
                          ProjectName: "Travel Guide",
                          ProjectLogoPath: '',
                          ProjectDescription:
                              "'Travel Guide is an travel agency app  .\n In this app we can explore places, hotels, restaurants and routes. .",
                          ProjectDescriptionForMobile:
                              "'Travel Guide is an travel agency app  .\n In this app we can explore places, hotels, restaurants and routes. .",
                          FirstTechnology: ' Flutter ',
                          SecondTechnology: ' , Dart ',
                          ThirdTechnology: ' , Github  ',
                          ForthTechnology: ' , Firebase',
                          ProjectUrl:
                              "https://github.com/Muhammad-Ashar650/TravelGuide",
                        );
                      }
                      return Container();
                    }),
                const SizedBox(
                  height: 12,
                ),
                FutureBuilder(
                    future: count(4),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return const ProjectAdapter(
                          ProjectName: "ChatingKar",
                          ProjectLogoPath: '',
                          ProjectDescription:
                              "'ChatingKar is a flutter application . In this app we can chat with freinds and groups.",
                          ProjectDescriptionForMobile:
                              "'ChatingKar is a flutter application .\nIn this app we can chat with freinds and groups.",
                          FirstTechnology: 'FLUTTER ',
                          SecondTechnology: ', DART ',
                          ThirdTechnology: ', FIREBASE ',
                          ForthTechnology: ', GITHUB',
                          ProjectUrl: "https://github.com/Muhammad-Ashar650",
                        );
                      }
                      return Container();
                    }),
                const SizedBox(
                  height: 12,
                ),
                FutureBuilder(
                    future: count(5),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return const ProjectAdapter(
                          ProjectName: "Tic Tac Toe",
                          ProjectLogoPath: '',
                          ProjectDescription:
                              "'Tic Tac Toe' is a flutter application  .\n Here We can play with computer .",
                          ProjectDescriptionForMobile:
                              "'Tic Tac Toe' is a flutter application  .\n Here We can play with computer .",
                          FirstTechnology: ' Flutter ',
                          SecondTechnology: ' , Dart ',
                          ThirdTechnology: ' , Github  ',
                          ForthTechnology: ' , Firebase',
                          ProjectUrl:
                              "https://github.com/Muhammad-Ashar650/Tic-Tac-Toe",
                        );
                      }
                      return Container();
                    }),
                const SizedBox(
                  height: 12,
                ),
                FutureBuilder(
                    future: count(6),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return const ProjectAdapter(
                          ProjectName: "Calculator",
                          ProjectLogoPath: '',
                          ProjectDescription:
                              "'Simple calculator made on flutter   .\n Can do arithmatic operations .",
                          ProjectDescriptionForMobile:
                              "'Simple calculator made on flutter   .\n Can do arithmatic operations .",
                          FirstTechnology: ' Flutter ',
                          SecondTechnology: ' , Dart ',
                          ThirdTechnology: ' , Github  ',
                          ForthTechnology: ' , Firebase',
                          ProjectUrl:
                              "https://github.com/Muhammad-Ashar650/calculator",
                        );
                      }
                      return Container();
                    }),
                const SizedBox(
                  height: 70,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
