import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  String text;
  Color color;
  double size;
  bool bold;
  AppText({Key? key, required this.text, this.color = Colors.black, this.size = 15.0, this.bold=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color,fontSize: size,fontWeight: bold ? FontWeight.bold : null,),);
  }
}
