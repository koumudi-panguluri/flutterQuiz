import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class SlideBar extends StatelessWidget {
  final Size size;
  SlideBar(this.size);
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: (size.height * 0.23),
        margin: EdgeInsets.only(
          top: defaultPadding * 16.5,
        ),
        padding: EdgeInsets.only(left: defaultPadding * 0.2),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            gradient: LinearGradient(colors: [
              statsColor.withOpacity(0.5),
              backgroundColor.withOpacity(0.6)
            ])),
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(
                left: defaultPadding * 0.5,
              ),
              child: Text(
                "Topics",
                style: GoogleFonts.teko(
                  fontSize: 22,
                  color: textColor,
                  textStyle: TextStyle(color: Colors.blue),
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: defaultPadding * 1.5,
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _images("assets/images/mathmatics.jpg", "Math", context, 1),
                  _images("assets/images/myth.png", "Mythology", context, 2),
                  _images("assets/images/sports1.jpg", "Sports", context, 3),
                  _images(
                      "assets/images/computer3.jpg", "Computer", context, 4),
                ],
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}

Widget _images(imagePath, name, context, index) {
  return GestureDetector(
      onTap: () {
        print("tapped");
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => CategoryNews(name, url, index)),
        // );
      },
      child: Stack(children: [
        Container(
            width: MediaQuery.of(context).size.width * 0.35,
            padding: EdgeInsets.only(left: defaultPadding * 0.5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Stack(alignment: Alignment.bottomCenter, children: [
                Image.asset(imagePath, fit: BoxFit.cover),
                Container(
                    height: MediaQuery.of(context).size.height * 0.04,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white.withOpacity(0.85),
                    padding: EdgeInsets.only(
                        left: defaultPadding, right: defaultPadding),
                    child: Column(children: [topicName(name)])),
              ]),
            )
            // child: Card(
            //   elevation: 5,
            //   color: statsColor.withOpacity(0.1),
            //   child:
            //       Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            //     Image.asset(imagePath, fit: BoxFit.cover),
            //   ]),
            // ),
            ),
      ]));
}

Widget topicName(name) {
  return Text(name,
      style: GoogleFonts.teko(
          letterSpacing: 1,
          color: backgroundColor,
          fontSize: 18,
          fontWeight: FontWeight.bold));
}

// Container(
//             child: Row(
//               children: [
//                 Container(
//                   height: size.height * 0.18,
//                   width: size.width * 0.3,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.all(Radius.circular(10)),
//                   ),
//                   child: Image.asset(
//                     "assets/images/home.jpg",
//                     fit: BoxFit.cover,
//                   ),
//                 )
//               ],
//             ),
//           )
