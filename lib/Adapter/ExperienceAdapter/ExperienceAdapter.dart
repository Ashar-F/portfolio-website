// ignore_for_file: file_names, non_constant_identifier_names, library_private_types_in_public_api

import 'package:flutter/material.dart';

class ExperienceAdapter extends StatefulWidget {
  final String CompanyLogoPath;
  final String CompanyName;
  final String WorkDescription;
  final String WorkDuration;
  final String WorkDetails;

  const ExperienceAdapter(
      {Key? key,
      required this.CompanyLogoPath,
      required this.CompanyName,
      required this.WorkDescription,
      required this.WorkDuration,
      required this.WorkDetails})
      : super(key: key);

  @override
  _ExperienceAdapterState createState() => _ExperienceAdapterState();
}

class _ExperienceAdapterState extends State<ExperienceAdapter> {
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
        width: MediaQuery.of(context).size.width,
        margin: width > 600
            ? const EdgeInsets.only(top: 60)
            : const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: Colors.white.withOpacity(0.7), width: 1)),
        child: Column(
          children: [
            Column(
              children: [
                FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Row(
                    children: [
                      FittedBox(
                        fit: BoxFit.contain,
                        child: SizedBox(
                          height: 100,
                          width: 100,
                          child: Image.asset(widget.CompanyLogoPath),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        children: [
                          FittedBox(
                            fit: BoxFit.contain,
                            child: Container(
                              padding: const EdgeInsets.only(left: 17),
                              child: Text(
                                widget.CompanyName,
                                style: TextStyle(
                                  fontSize: width > 600 ? 20 : 15,
                                  color: Colors.white,
                                  letterSpacing: 3,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          FittedBox(
                            fit: BoxFit.contain,
                            child: Text(
                              widget.WorkDescription,
                              style: TextStyle(
                                fontSize: width > 600 ? 15 : 12,
                                color: Colors.white.withOpacity(0.8),
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Text(
                            widget.WorkDetails,
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white.withOpacity(0.7),
                              letterSpacing: 2,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          FittedBox(
                            fit: BoxFit.contain,
                            child: Text(
                              widget.WorkDuration,
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white.withOpacity(0.5),
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
