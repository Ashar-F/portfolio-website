// ignore_for_file: file_names, library_private_types_in_public_api, avoid_unnecessary_containers, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../Variable.dart';

class IntroDuctionAnimationTextAdapter extends StatefulWidget {
  const IntroDuctionAnimationTextAdapter({super.key});

  @override
  _IntroDuctionAnimationTextAdapterState createState() =>
      _IntroDuctionAnimationTextAdapterState();
}

class _IntroDuctionAnimationTextAdapterState
    extends State<IntroDuctionAnimationTextAdapter> {
  Future count(int n) async {
    return Future.delayed(Duration(seconds: n));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 15, 20, 20),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            child: AnimatedTextKit(
              isRepeatingAnimation: false,
              animatedTexts: [
                TypewriterAnimatedText(
                  '</ Hello />',
                  speed: const Duration(milliseconds: 50),
                  textStyle: const TextStyle(
                    color: Colors.teal,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.4,
                  ),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
          Container(
            child: FutureBuilder(
              future: count(1),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Container(
                    padding: const EdgeInsets.all(15),
                    child: AnimatedTextKit(
                      isRepeatingAnimation: false,
                      animatedTexts: [
                        TypewriterAnimatedText("I'm $NAME",
                            speed: const Duration(milliseconds: 55),
                            textStyle: TextStyle(
                              color: Colors.blueGrey[900],
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.left),
                      ],
                    ),
                  );
                }
                return Container();
              },
            ),
          ),
          Container(
            child: FutureBuilder(
              future: count(2),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Container(
                    padding: const EdgeInsets.all(10),
                    child: AnimatedTextKit(
                      isRepeatingAnimation: false,
                      animatedTexts: [
                        TypewriterAnimatedText(PROFESSION_DETAILS,
                            textStyle: TextStyle(
                              color: Colors.blueGrey[900],
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left),
                      ],
                    ),
                  );
                }
                return Container();
              },
            ),
          ),
          Container(
            child: FutureBuilder(
              future: count(5),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Container(
                    padding: const EdgeInsets.all(10),
                    child: AnimatedTextKit(
                      isRepeatingAnimation: false,
                      animatedTexts: [
                        TypewriterAnimatedText(
                          MORE_DETAILS_INTRODUCTION,
                          speed: const Duration(milliseconds: 10),
                          textStyle: const TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            letterSpacing: 1.2,
                            height: 1.3,
                          ),
                        ),
                      ],
                    ),
                  );
                }
                return Container();
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 20),
            child: FutureBuilder(
              future: count(8),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Container(
                    margin: const EdgeInsets.only(top: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.white38,
                    ),
                    child: TextButton(
                      child: const Text(
                        "    Contact me    ",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      onPressed: () {
                        launch("tel://+923067657080");
                      },
                    ),
                  );
                }
                return Container();
              },
            ),
          ),
          // Container(
          //   child: FutureBuilder(
          //     future: count(9),
          //     builder: (context, snapshot) {
          //       if (snapshot.connectionState == ConnectionState.done) {
          //         return Container(
          //           padding: const EdgeInsets.fromLTRB(0, 40, 10, 20),
          //           child: AnimatedTextKit(
          //             isRepeatingAnimation: false,
          //             animatedTexts: [
          //               TypewriterAnimatedText(
          //                 "Design & Build by Ashar with ❤ Flutter",
          //                 textStyle: const TextStyle(
          //                   color: Colors.grey,
          //                   fontSize: 10,
          //                   letterSpacing: 1.2,
          //                   height: 1.3,
          //                 ),
          //               ),
          //             ],
          //           ),
          //         );
          //       }
          //       return Container();
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}
