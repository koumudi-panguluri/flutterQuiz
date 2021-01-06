import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:quiz/home/statistics.dart';
import 'package:quiz/home/slideBar.dart';
import '../constants.dart';

class TopBar extends StatelessWidget {
  final Size size;
  TopBar(this.size);
  @override
  Widget build(BuildContext context) {
    return Container(
        // height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Container(
              height: size.height * 0.35,
              width: size.width * 0.96,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [backgroundColor, decorationColor]),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0.0),
                      topRight: Radius.circular(0.0),
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(100.0)),
                  color: decorationColor),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Container(
                  margin: EdgeInsets.only(
                      top: defaultPadding * 0.5, right: defaultPadding * 1.5),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/user.png"),
                    radius: 40,
                  )),
            ]),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: defaultPadding * 6),
                Container(
                    margin: EdgeInsets.only(left: defaultPadding),
                    child: Text("Hello,",
                        style: GoogleFonts.yanoneKaffeesatz(
                            fontSize: 40, color: textColor))),
                Container(
                    margin: EdgeInsets.only(
                        top: defaultPadding * 0.5, left: defaultPadding),
                    child: Text("Jonathan Brek",
                        style: GoogleFonts.yanoneKaffeesatz(
                            fontSize: 30, color: textColor))),
              ],
            ),
            Container(
              child: Statistics(size),
            ),
            Container(
              child: SlideBar(size),
            ),
          ],
        ));
  }
}
