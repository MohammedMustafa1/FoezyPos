import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class numberfield extends StatelessWidget {
  numberfield({Key? key, this.text ='0.0',this.limit=10,this.size=10}) : super(key: key);
  TextEditingController textController = TextEditingController();
  String text;
  int limit;
  double size;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: TextFormField(
        inputFormatters: [
          LengthLimitingTextInputFormatter(limit),
        ],
        style: TextStyle(fontSize: size),
        controller: textController,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: text,
          hintStyle: TextStyle(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}





