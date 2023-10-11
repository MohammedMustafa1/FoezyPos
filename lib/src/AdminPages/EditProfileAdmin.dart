
import 'package:flutter/material.dart';
import 'package:solo_leveling/src/Global/global_landscape_view.dart';
import 'package:solo_leveling/src/Global/globalvariable.dart';
import 'package:solo_leveling/src/widgets/ProfileUpdate_popup.dart';
import 'package:solo_leveling/src/widgets/appText.dart';
import 'dart:ui';

class EditProfilepage extends StatelessWidget {
  EditProfilepage({Key? key}) : super(key: key);

Widget landscape(){

  fn();
  return body(lp: lp, rp: rp);
}
  Widget potrait(){

    fn();
  return body(lp: lp, rp: rp);
  }
  // @override
  // void initState() {
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    //window.physicalSize;
    return Scaffold(
    body: OrientationBuilder(
      builder: (context,orientation){
        if(orientation == Orientation.landscape){
          return landscape();
        }
        else{
          return potrait();
        }
      },
    ),
  );
  }
  //important for padding in landscape and potrait
}

class body extends StatefulWidget {
  const body({
    Key? key,
    required this.lp,
    required this.rp,

  }) : super(key: key);

  final double lp;
  final double rp;


  @override
  State<body> createState() => _bodyState();
}

class _bodyState extends State<body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 130,
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF722298),
        title: Stack(
          alignment: Alignment.topRight,
          children: [
            InkWell(
              onTap: (){Navigator.pop(context);},
              child: Icon(
                Icons.close,
                size: 35,
              ),
            ),
            Row(
              children: [
                Expanded(child: Padding(padding: EdgeInsets.only(top: 50,bottom: 50),child: Container(child: Center(child: AppText(text: "EDIT PROFILE",color: Colors.white,bold: true,size: 28,),),)),),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
       child: Column(
         children: [
           SizedBox(height: 40,),
           //Center(child: Image.asset('images/adminprofile.png',height: 200,width: 200,),),
           profileupdatedpopup(),
           SizedBox(height: 30,),
           Padding(
             //padding: EdgeInsets.only(right: 25,left: 25),
             padding: EdgeInsets.only(left: widget.lp,right: widget.rp),
             child: Row(
               children: [
                 Expanded(flex: 1 ,
                   child: Container(
                     alignment:Alignment.centerLeft,
                     child: AppText(text: "First Name :",color: Color(0xFF722298),size: 19,bold: true,),
                   ),
                 ),
                 Expanded(flex: 2,
                   child: Container(
                     height: 40,
                     alignment: Alignment.centerLeft,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(6),
                       border: Border.all(width: 1,color: Color(0xFFC4C4C4)),
                     ),
                     child: Padding(padding:EdgeInsets.only(left: 5),child: AppText(text: 'Admin',color: Color(0xFF6D2298),)),
                   ),
                 ),
               ],
             ),
           ),
           SizedBox(height: 15,),
           Padding(
             padding: EdgeInsets.only(right: widget.rp,left: widget.lp),
             child: Row(
               children: [
                 Expanded(flex: 1 ,
                   child: Container(
                     alignment:Alignment.centerLeft,
                     child: AppText(text: "Last Name :",color: Color(0xFF722298),size: 19,bold: true,),
                   ),
                 ),
                 Expanded(flex: 2,
                   child: Container(
                     height: 40,
                     alignment: Alignment.centerLeft,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(6),
                       border: Border.all(width: 1,color: Color(0xFFC4C4C4)),
                     ),
                     child: Padding(padding:EdgeInsets.only(left: 5),child: AppText(text: 'User',color: Color(0xFF6D2298),)),
                   ),
                 ),
               ],
             ),
           ),
           SizedBox(height: 15,),
           Padding(
             padding: EdgeInsets.only(right: widget.rp,left: widget.lp),
             child: Row(
               children: [
                 Expanded(flex: 1 ,
                   child: Container(
                     alignment:Alignment.centerLeft,
                     child: AppText(text: "Email :",color: Color(0xFF722298),size: 19,bold: true,),
                   ),
                 ),
                 Expanded(flex: 2,
                   child: Container(
                     height: 40,
                     alignment: Alignment.centerLeft,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(6),
                       border: Border.all(width: 1,color: Color(0xFFC4C4C4)),
                     ),
                     child: Padding(padding:EdgeInsets.only(left: 5),child: AppText(text: 'admin@admin.com',color: Color(0xFF6D2298),)),
                   ),
                 ),
               ],
             ),
           ),
           SizedBox(height: 15,),
           Padding(
             padding: EdgeInsets.only(right: widget.rp,left: widget.lp),
             child: Row(
               children: [
                 Expanded(flex: 1 ,
                   child: Container(
                     alignment:Alignment.centerLeft,
                     child: AppText(text: "Image :",color: Color(0xFF722298),size: 19,bold: true,),
                   ),
                 ),
                 Expanded(flex: 1,
                   child: Container(
                     height: 40,
                     alignment: Alignment.center,
                     decoration: BoxDecoration(
                       color: Color(0xFFC4C4C4),
                       borderRadius: BorderRadius.circular(6),
                       border: Border.all(width: 1,color: Colors.black),
                       boxShadow: [
                         BoxShadow(
                           spreadRadius: 1,
                           blurRadius: 6,
                           color: Colors.black.withOpacity(0.2),
                           offset: const Offset(0.0,5.0),
                         ),
                       ],
                     ),
                     child: AppText(text: 'Choose file',color: Color(0xFF464646),),
                   ),
                 ),
                 Expanded(flex: 1,
                   child: Container(
                     height: 40,
                     alignment: Alignment.center,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(6),
                     ),
                     child: AppText(text: 'No file chosen',color: Color(0xFF6D2298),),
                   ),
                 ),
               ],
             ),
           ),
           SizedBox(height: 40,),
           Center(
             child: Container(
               height: 40,
               width: 120,
               decoration: BoxDecoration(
                 color: Color(0xFF05A155),
                 borderRadius: BorderRadius.circular(6),
               ),
               child: Center(child: AppText(text: "Update Profile",color: Colors.white,size: 14,),),
             ),
           ),
           SizedBox(height: 40,),
         ],
       ),
 ),
    );
  }
}
