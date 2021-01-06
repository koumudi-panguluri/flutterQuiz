import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/home/chart.dart';

import '../constants.dart';

class Statistics extends StatefulWidget {
  final Size size;
  Statistics(this.size);
  @override
  StatisticsState createState() => StatisticsState();
}

class StatisticsState extends State<Statistics> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: (widget.size.height * 0.28),
        width: (widget.size.width * 0.5),
        margin: EdgeInsets.only(
          left: defaultPadding * 9,
          right: defaultPadding,
          top: defaultPadding * 7,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            gradient: LinearGradient(colors: [
              statsColor.withOpacity(0.5),
              backgroundColor.withOpacity(0.6)
            ])),
        child: Stack(children: [
          Container(
            margin: EdgeInsets.only(
                top: defaultPadding * 0.15,
                left: defaultPadding,
                bottom: defaultPadding),
            child: Text(
              "Statistics",
              style: GoogleFonts.tillana(
                fontSize: 18,
                color: textColor,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Container(
            child: Chart(),
          ),
        ]));
  }
}
