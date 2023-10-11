import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:solo_leveling/src/data/data_forpiechart_mainhome.dart';


List<PieChartSectionData> getSections(int touchedIndex) => PieData.data
    .asMap()
    .map<int, PieChartSectionData>((index, data) {
  final isTouched = index == touchedIndex;
  final double fontSize = isTouched ? 16 : 12;
  final double radius = isTouched ? 40 : data.radius1;
  //final double radius = data.radius1;
  final double outside = isTouched? 1.8 : data.outside;

  final value = PieChartSectionData(
    color: data.color,
    value: data.percent,
    //title:'',
    title: '${data.name}',
    titlePositionPercentageOffset: outside,
    radius: radius,
    titleStyle: TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      color: const Color(0xFF05A155),
    ),
  );

  return MapEntry(index, value);
})
    .values
    .toList();
