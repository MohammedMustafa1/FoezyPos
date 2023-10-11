import 'package:flutter/material.dart';


class PieData {
  static List<Data> data = [
    Data(name: 'Total Purchased', percent: 40, radius1: 40,outside:1.5,color: const Color(0xff0293ee)),
    Data(name: 'Orange', percent: 30,radius1: 30,outside:2, color: const Color(0xfff8b250)),
    Data(name: 'Black', percent: 20,radius1: 20,outside:2.5, color: Colors.black),
    Data(name: 'Green', percent: 15,radius1: 15,outside:3, color: const Color(0xff13d38e)),
  ];
}

class Data {
  final String name;

  final double percent;

  final Color color;

  final double radius1;

  final double outside;

  Data({required this.name, required this.percent, required this.color,required this.radius1,required this.outside});
}