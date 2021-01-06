import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/constants.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Activity extends StatelessWidget {
  final Size size;
  Activity(this.size);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            width: size.width,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                margin: EdgeInsets.only(
                    left: defaultPadding * 0.5, top: defaultPadding * 0.5),
                child: Text(
                  "Recent Activity",
                  style: GoogleFonts.teko(
                    fontSize: 22,
                    color: textColor,
                    textStyle: TextStyle(color: Colors.blue),
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              activity(size, "Computers", 30, colors[0]),
              activity(size, "Mythology", 50, colors[1]),
              activity(size, "Mathmatics", 40, colors[2]),
              activity(size, "Sports", 100, colors[3]),
              activity(size, "History", 5, colors[4]),
              activity(size, "Geography", 80, colors[0]),
            ])));
  }
}

Widget activity(size, quizName, percent, color) {
  return Container(
    height: size.height * 0.1,
    margin:
        EdgeInsets.only(top: defaultPadding * 0.2, left: defaultPadding * 0.2),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        gradient: LinearGradient(colors: [
          statsColor.withOpacity(0.5),
          backgroundColor.withOpacity(0.6)
        ])),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          margin: EdgeInsets.only(left: defaultPadding * 0.4),
          child: CircularPercentIndicator(
            radius: 60.0,
            lineWidth: 2.0,
            animation: true,
            percent: (percent * 0.01),
            circularStrokeCap: CircularStrokeCap.round,
            backgroundColor: Color(0xffEAD7D7),
            progressColor: color,
            center: Center(
                child: Text("$percent %",
                    style: GoogleFonts.teko(color: textColor, fontSize: 16))),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
              top: defaultPadding * 0.5, left: defaultPadding * 0.8),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(quizName,
                style: GoogleFonts.tillana(color: textColor, fontSize: 18)),
            Text("You have completed $percent % of this quiz",
                style: GoogleFonts.redressed(
                    letterSpacing: 1, color: textColor, fontSize: 15)),
          ]),
        )
      ],
    ),
  );
}
