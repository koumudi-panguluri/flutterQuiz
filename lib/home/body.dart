import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:quiz/constants.dart';
import 'package:quiz/home/activity.dart';
import 'package:quiz/home/topBar.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Column(children: [
      Container(
          width: size.width,
          color: backgroundColor,
          child: Column(children: [TopBar(size), Activity(size)])),
    ]));
  }
}

// class BackgroundClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var path = Path();
//     path.lineTo(size.width, size.height);
//     return path;
//   }

//   @override
//   bool shouldReClip(CustomClipper<Path> oldClipper) {
//     return true;
//   }
// }
