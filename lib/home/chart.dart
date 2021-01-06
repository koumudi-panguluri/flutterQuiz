import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';

import '../constants.dart';

class Chart extends StatelessWidget {
  Map<String, double> dataMap = {
    "Completed": 80,
    "Pending": 20,
  };
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PieChart(
        dataMap: dataMap,
        animationDuration: Duration(milliseconds: 800),
        chartLegendSpacing: 0,
        chartRadius: MediaQuery.of(context).size.width,
        colorList: [Color(0xff3f2f54), Color(0xff25153b)],
        initialAngleInDegree: 0,
        chartType: ChartType.disc,
        ringStrokeWidth: 32,
        legendOptions: LegendOptions(
          showLegendsInRow: false,
          legendPosition: LegendPosition.left,
          showLegends: true,
          legendTextStyle: GoogleFonts.teko(
              letterSpacing: 1,
              fontWeight: FontWeight.normal,
              color: textColor),
        ),
        chartValuesOptions: ChartValuesOptions(
          showChartValueBackground: false,
          showChartValues: false,
          showChartValuesInPercentage: true,
          showChartValuesOutside: false,
        ),
      ),
    );
  }
}
