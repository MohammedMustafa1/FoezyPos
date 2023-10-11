import 'package:flutter/material.dart';


class MyCounter extends StatelessWidget {
  const MyCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: myCounter(),
    );
  }
}
class myCounter extends StatefulWidget {
  const myCounter({Key? key}) : super(key: key);
  @override
  _myCounterState createState() => _myCounterState();
}
//Imp stuff
class _myCounterState extends State<myCounter> {
  String value = '';
  TextEditingController textController = TextEditingController();
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _decrimentCounter() {
    setState(() {
      if(_counter>0) {
        _counter--;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 150,
      child: Row(
        children: [
          SizedBox(width: 10,),
          Container(
            width: 45,
            height: 20,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                elevation: 0,//background color of button
              ),
              onPressed: _decrimentCounter,
              child: Center(
                child: const Icon(Icons.remove,
                  size: 15,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          //imp container
          Container(
            width: 40.0,
            child: Center(
              child: TextField(
                maxLength: 3,
                controller: textController,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                  labelText: value.length==0 ? '     $_counter' : '',
                  counterText: '',
                ),
                onChanged: (String newValue){
                  print(newValue);
                  print(value);
                  if(newValue.length<=3){
                    setState(() {
                      value = newValue;
                    });
                  }
                },
              ),
            ),
          ),
          Container(
            width: 47.5,
            height: 20,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                elevation: 0,//background color of button
              ),
              onPressed: _incrementCounter,
              child: Center(
                child: const Icon(Icons.add,
                size: 15,
                color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
