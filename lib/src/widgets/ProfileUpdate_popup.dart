import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solo_leveling/src/Animation/Customrecttween_for_eye.dart';
import 'package:solo_leveling/utilities/HeroDialogRoute_for_allPopup.dart';

import 'appText.dart';


class profileupdatedpopup extends StatelessWidget {
  const profileupdatedpopup({Key? key}) : super(key: key);

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
        child:  Image.asset("images/adminprofile.png",height: 200,width: 200,),
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
                                child: Text("PROFILE UPDATED",
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
                    Padding(
                      padding: EdgeInsets.only(left: 15,right: 15),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding:EdgeInsets.only(right: 15,top: 20,),
                              child: Container(
                                child: Center(child: Image.asset('images/adminprofile.png',height: 100,width: 100,),),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: EdgeInsets.only(top: 15),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Material(
                                          color:Colors.white,
                                          child: AppText(text: "First Name",size: 9,bold: true,),
                                        ),
                                      ),
                                      Expanded(
                                        child: Material(
                                          color:Colors.white,
                                          child: AppText(text: "Last Name",size: 9,bold: true,),
                                        ),
                                      ),

                                    ],
                                  ),
                                  SizedBox(height: 3,),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Material(
                                          color:Colors.white,
                                          child: AppText(text: "Admin",size: 9,color: Color(0xFf808080),),
                                        ),
                                      ),
                                      Expanded(
                                        child: Material(
                                          color:Colors.white,
                                          child: AppText(text: "User",size: 9,color: Color(0xFf808080),),
                                        ),
                                      ),

                                    ],
                                  ),
                                  SizedBox(height: 30,),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Material(
                                          color:Colors.white,
                                          child: AppText(text: "Email",size: 9,bold: true,),
                                        ),
                                      ),
                                      Expanded(
                                        child: Material(
                                          color:Colors.white,
                                          child: AppText(text: "Password",size: 9,bold: true,),
                                        ),
                                      ),

                                    ],
                                  ),
                                  SizedBox(height: 3,),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Material(
                                          color:Colors.white,
                                          child: AppText(text: "admin@admin.com",size: 9,color: Color(0xFf808080),),
                                        ),
                                      ),
                                      Expanded(
                                        child: Row(
                                          children: [
                                            Material(
                                              color:Colors.white,
                                              child: AppText(text: "************** ",size: 9,color: Color(0xFf808080),),
                                            ),
                                            Image.asset("images/eye.png",height: 13,width: 13,),
                                          ],
                                        ),
                                      ),

                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
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



