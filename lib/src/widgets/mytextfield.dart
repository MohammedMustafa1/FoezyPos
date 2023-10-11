import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class mytextfield extends StatelessWidget {
  mytextfield({Key? key,required this.text,this.limit=50}) : super(key: key);
  String text;
  int limit;
  TextEditingController textcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: [
        LengthLimitingTextInputFormatter(limit),
      ],
      style: TextStyle(fontSize: 10),
      controller: textcontroller,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: text,
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 16
        ),
      ),
    );
  }
}

