import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solo_leveling/src/Animation/Customrecttween_for_menu.dart';
import 'package:solo_leveling/utilities/HeroDialogRoute_for_allPopup.dart';
import 'package:solo_leveling/utilities/routes.dart';

import 'appText.dart';


class menupopup extends StatelessWidget {
  const menupopup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: _heroaddtodo,
      createRectTween: (begin,end){
        return Customrecttween_for_menu(begin:begin,end:end);
      },
      child:  ElevatedButton(
        onPressed: (){
          Navigator.of(context).push(HeroDialogRoute(builder:(context){
            return addtodopopupcard();
          }));
        },
        child: Container(
          alignment: Alignment.center,
          width:double.infinity,
          height: 50,
          child: Center(
            child: Text("SALES",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ),
        ),
        style: ButtonStyle(
          foregroundColor: getColor(Color(0xFF6D2298), Colors.white),
          backgroundColor: getColor(Color(0xFFffc300),Color(0xFF6D2298)),
          elevation: MaterialStateProperty.all(0), //used to make elevation 0
        ),
      ),
    );
  }
}

//Method to change color
MaterialStateProperty<Color>getColor(Color color,Color colorPressed) {
  final getColor = (Set<MaterialState> states) {
    if (states.contains(MaterialState.pressed)) {
      return colorPressed;
    }
    else {
      return color;
    }
  };
  return MaterialStateProperty.resolveWith((getColor));
}


const String _heroaddtodo='add_todo_hero';


class addtodopopupcard extends StatelessWidget {
  const addtodopopupcard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Hero(
          tag: _heroaddtodo,
          createRectTween: (begin,end){
            return Customrecttween_for_menu(begin:begin,end:end);
          },
          child: SingleChildScrollView(
            child: Container(
              height: 155,
              color: Colors.transparent,
              child: Column(
                children: [
                  //Container(height: 1,color: Color(0xFFffc300),),
                  ElevatedButton(
                    onPressed: (){
                      Navigator.of(context).pop();
                      //Navigator.pop(context);
                      //both are same
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width:double.infinity,
                      height: 50,
                      child: Center(
                        child: Text("SALES",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                    style: ButtonStyle(
                      foregroundColor: getColor(Color(0xFFffc300),Color(0xFF6D2298)),
                      backgroundColor: getColor(Color(0xFF6D2298),Color(0xFFffc300),),
                      elevation: MaterialStateProperty.all(0),//used to make elevation 0
                      shape: MaterialStateProperty. all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius. circular(0),
                          )
                      ),
                    ),
                  ),
                  Container(height: 1,color: Color(0xFFffc300),),
                  ElevatedButton(
                    onPressed: (){
                      Navigator.pushNamed(context, MyRoutes.newsaleroute);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width:double.infinity,
                      height: 50,
                      child: Center(
                        child: Text("NEW SALES",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                    style: ButtonStyle(
                      foregroundColor: getColor(Color(0xFFffc300),Color(0xFF6D2298)),
                      backgroundColor: getColor(Color(0xFF6D2298),Color(0xFFffc300),),
                      elevation: MaterialStateProperty.all(0), //used to make elevation 0
                      shape: MaterialStateProperty. all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius. circular(0),
                          )
                      ),
                    ),
                  ),
                  Container(height: 1,color: Color(0xFFffc300),),
                  ElevatedButton(
                    onPressed: (){
                      Navigator.pushNamed(context, MyRoutes.managesaleroute);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width:double.infinity,
                      height: 50,
                      child: Center(
                        child: Text("MANAGE SALES",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                    style: ButtonStyle(
                      foregroundColor: getColor(Color(0xFFffc300),Color(0xFF6D2298)),
                      backgroundColor: getColor(Color(0xFF6D2298),Color(0xFFffc300),),
                      elevation: MaterialStateProperty.all(0), //used to make elevation 0
                      shape: MaterialStateProperty. all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius. circular(0),
                          )
                      ),
                    ),
                  ),
                  //Container(height: 1,color: Color(0xFFffc300),),
                ],
              ),
            ),
          )
      ),
    );
  }
}



