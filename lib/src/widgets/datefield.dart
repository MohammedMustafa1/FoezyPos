import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class datefield extends StatefulWidget {
  datefield({Key? key,this.color=Colors.grey}) : super(key: key);
  Color color;
  @override
  State<datefield> createState() => _datefieldState();
}

class _datefieldState extends State<datefield> {

  DateTime currentDate = DateTime.now();
  DateFormat formatter = DateFormat('yyyy-MM-dd');
  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
      builder: (BuildContext context, Widget ?child) {
        return Theme(
          data: ThemeData(
            primarySwatch: Colors.grey,
            splashColor: Colors.black,
            textTheme: const TextTheme(
              subtitle1: TextStyle(color: Colors.black),
              button: TextStyle(color: Colors.black),
            ),
            accentColor: Colors.black,
            colorScheme: const ColorScheme.light(
                primary: Color(0xFF6D2298),  //main one to change color
                primaryVariant: Colors.black,
                secondaryVariant: Colors.black,
                onSecondary: Colors.black,
                onPrimary: Colors.white,
                surface: Colors.black,
                onSurface: Colors.black,
                secondary: Colors.black),
            dialogBackgroundColor: Colors.white,
          ),
          child: child ?? const Text(""),
        );
      },
        initialDate: currentDate,
        firstDate: DateTime(2000),
        lastDate: DateTime(2030),
    );
    if (picked != null && picked != currentDate) {
      setState(() {
        currentDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        selectDate(context);
      },
      // child: Center(child: Text('${currentDate.year}:${currentDate.month.toString().length>=1 ? '0${currentDate.month}' : currentDate.month}:${currentDate.day}')),
      child: Center(child: Text(formatter.format(currentDate),style: TextStyle(color: widget.color),),),
    );
  }
}