import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solo_leveling/src/Animation/Customrecttween_for_eye.dart';
import 'package:solo_leveling/utilities/HeroDialogRoute_for_allPopup.dart';
import 'package:solo_leveling/utilities/routes.dart';

import 'appText.dart';


class eyepopup extends StatelessWidget {
  const eyepopup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(HeroDialogRoute(builder:(context){
          return addtodopopupcard();
        }));
      },
      child: Hero(
        tag: _heroaddtodo,
        createRectTween: (begin,end){
          return Customrecttween(begin:begin,end:end);
        },
        child:  Image.asset("images/eye.png",width: 25,height: 25,),
      ),
    );
  }
}


const String _heroaddtodo='add_todo_hero';


class addtodopopupcard extends StatelessWidget {
  const addtodopopupcard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Hero(
          tag: _heroaddtodo,
          createRectTween: (begin,end){
            return Customrecttween(begin:begin,end:end);
          },
          child: SingleChildScrollView(
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 8,
                    offset: Offset(0,0),//Change position of shadow
                    color: Colors.grey.withOpacity(.2),
                    spreadRadius: 3,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          color: Color(0xFF6D2298),
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Positioned(
                              right: 10,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: Icon(
                                  Icons.close,
                                  size: 35,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Material(
                              color: Color(0xFF6D2298),
                                child: Text("PRODUCT DETAILS",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                  ),
                                ),
                            ),
                          ],
                        ),
                      )),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Expanded(
                      child: Row(
                        children: [
                          Padding(
                            padding:EdgeInsets.only(right: 15,top: 20,),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    spreadRadius: 4,
                                    blurRadius: 8,
                                    color: Colors.black.withOpacity(0.2),
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image(
                                  fit: BoxFit.cover,
                                  image: NetworkImage('https://wallpaperaccess.com/thumb/3231246.png',),
                                  height: 100,
                                  width: 100,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Material(
                                      color:Colors.white,
                                      child: AppText(text: "PRODUCT NAME",size: 9,bold: true,),
                                    ),
                                    SizedBox(width: 20,),
                                    Material(
                                      color:Colors.white,
                                      child: AppText(text: "PRODUCT MODEL",size: 9,bold: true,),
                                    ),
                                    SizedBox(width: 15,),
                                    Material(
                                      color:Colors.white,
                                      child: AppText(text: "Price",size: 9,bold: true,),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 3,),
                                Row(
                                  children: [
                                    Material(
                                      color:Colors.white,
                                      child: AppText(text: "PRODUCT NAME",size: 9,),
                                    ),
                                    SizedBox(width: 20,),
                                    Material(
                                      color:Colors.white,
                                      child: AppText(text: "PRODUCT MODEL",size: 9,),
                                    ),
                                    SizedBox(width: 15,),
                                    Material(
                                      color:Colors.white,
                                      child: AppText(text: "Price",size: 9,),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 30,),
                                Row(
                                  children: [
                                    Material(
                                      color:Colors.white,
                                      child: AppText(text: "UNIT",size: 9,bold: true,),
                                    ),
                                    SizedBox(width: 75,),
                                    Material(
                                      color:Colors.white,
                                      child: AppText(text: "STOCK",size: 9,bold: true,),
                                    ),
                                    SizedBox(width: 65,),
                                    Material(
                                      color:Colors.white,
                                      child: AppText(text: "Price",size: 9,bold: true,),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 3,),
                                Row(
                                  children: [
                                    Material(
                                      color:Colors.white,
                                      child: AppText(text: "UNIT",size: 9,),
                                    ),
                                    SizedBox(width: 75,),
                                    Material(
                                      color:Colors.white,
                                      child: AppText(text: "STOCK",size: 9,),
                                    ),
                                    SizedBox(width: 65,),
                                    Material(
                                      color:Colors.white,
                                      child: AppText(text: "Price",size: 9,),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ),
      ),
    );
  }
}



