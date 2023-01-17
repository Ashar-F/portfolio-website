// ignore_for_file: non_constant_identifier_names, file_names, library_private_types_in_public_api, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectAdapter extends StatefulWidget {
  final String ProjectName;
  final String ProjectLogoPath;
  final String ProjectDescription;
  final String ProjectDescriptionForMobile;
  final String FirstTechnology;
  final String SecondTechnology;
  final String ThirdTechnology;
  final String ForthTechnology;
  final String ProjectUrl;

  const ProjectAdapter(
      {Key? key,
      required this.ProjectName,
      required this.ProjectLogoPath,
      required this.ProjectDescription,
      required this.ProjectDescriptionForMobile,
      required this.FirstTechnology,
      required this.SecondTechnology,
      required this.ThirdTechnology,
      required this.ForthTechnology,
      required this.ProjectUrl})
      : super(key: key);
  @override
  _ProjectAdapterState createState() => _ProjectAdapterState();
}

class _ProjectAdapterState extends State<ProjectAdapter> {
  late double hight, width;
  @override
  Widget build(BuildContext context) {
    hight = MediaQuery.of(context).size.height > 600
        ? MediaQuery.of(context).size.height
        : 600;
    width = MediaQuery.of(context).size.width > 300
        ? MediaQuery.of(context).size.width
        : 300;
    return Container(
        margin: width > 600
            ? const EdgeInsets.only(top: 60)
            : const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: Colors.white.withOpacity(0.7), width: 1)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                FittedBox(
                  fit: BoxFit.contain,
                  child: Row(
                    children: [
                      widget.ProjectLogoPath == ''
                          ? Container()
                          : FittedBox(
                              fit: BoxFit.contain,
                              child: SizedBox(
                                height: 20,
                                width: 20,
                                child: Image.asset(widget.ProjectLogoPath),
                              ),
                            ),
                      FittedBox(
                        fit: BoxFit.contain,
                        child: Container(
                          padding: const EdgeInsets.only(left: 25),
                          child: Text(
                            widget.ProjectName,
                            style: TextStyle(
                                fontSize: width > 600 ? 22 : 18,
                                color: Colors.white,
                                letterSpacing: 3),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    width > 600
                        ? widget.ProjectDescription
                        : widget.ProjectDescriptionForMobile,
                    style: TextStyle(
                        fontSize: width > 600 ? 18 : 15,
                        color: Colors.white.withOpacity(0.6),
                        letterSpacing: 1.2),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 13,
                ),
                FittedBox(
                  fit: BoxFit.contain,
                  child: Container(
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 7),
                          child: const Text(
                            "Technologies Used : ",
                            style: TextStyle(
                                fontSize: 10,
                                letterSpacing: 1.5,
                                color: Colors.white),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 7),
                          child: Text(
                            widget.FirstTechnology,
                            style: const TextStyle(
                                fontSize: 10,
                                letterSpacing: 1.5,
                                color: Colors.white),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 7),
                          child: Text(
                            widget.SecondTechnology,
                            style: const TextStyle(
                                fontSize: 10,
                                letterSpacing: 1.5,
                                color: Colors.white),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 7),
                          child: Text(
                            widget.ThirdTechnology,
                            style: const TextStyle(
                                fontSize: 10,
                                letterSpacing: 1.5,
                                color: Colors.white),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 7),
                          child: Text(
                            widget.ForthTechnology,
                            style: const TextStyle(
                                fontSize: 10,
                                letterSpacing: 1.5,
                                color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                Container(
                  width: 180,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.white38,
                  ),
                  child: TextButton(
                    child: Row(
                      children: const [
                        Icon(
                          IconData(0xe800,
                              fontFamily: 'MySocialIcons', fontPackage: null),
                          color: Colors.white,
                        ),
                        Text(
                          "    Project Link    ",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        )
                      ],
                    ),
                    onPressed: () {
                      launch(widget.ProjectUrl);
                    },
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
