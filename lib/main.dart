import 'package:flutter/material.dart';
import 'package:quiz/constants.dart';

import 'home/body.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz-Up',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      //   visualDensity: VisualDensity.adaptivePlatformDensity,
      // ),
      home: MyHomePage(title: 'Quiz-Up'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text(widget.title),
        leading: IconButton(
          icon: Icon(Icons.chevron_right),
          onPressed: () {},
        ),
        backgroundColor: appBarColor,
        elevation: 0,
      ),
      body: Body(),
    );
  }
}
