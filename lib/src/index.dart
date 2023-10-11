import 'package:flutter/material.dart';
import 'package:solo_leveling/src/AdminPages/Adminmenupage.dart';
import 'package:solo_leveling/src/AdminPages/EditProfileAdmin.dart';
import 'package:solo_leveling/src/Invoice.dart';
import 'package:solo_leveling/src/Mainhome.dart';
import 'package:solo_leveling/src/Managesale.dart';
import 'package:solo_leveling/src/Menupage.dart';
import 'package:solo_leveling/src/Newsale.dart';
import 'package:solo_leveling/src/Registerpage.dart';
import 'package:solo_leveling/src/AdminPages/adminhome.dart';
import 'package:solo_leveling/src/login.dart';
import 'package:solo_leveling/utilities/routes.dart';
import 'home.dart';



class  MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: Homepage(),
      routes: {
        "/":(context)=> Adminhomepage(),
        MyRoutes.adminhomeroute:(context)=>Adminhomepage(),
        MyRoutes.homeroute:(context)=> Homepage(),
        MyRoutes.loginroute : (context)=> loginpage(),
        MyRoutes.registerroute : (context)=>Registerpage(),
        MyRoutes.menuroute : (context)=>Menupage(),
        MyRoutes.invoiceroute: (context)=>Invoicepage(),
        MyRoutes.managesaleroute:(context)=>Managesalepage(),
        MyRoutes.newsaleroute:(context)=>Newsalepage(),
        MyRoutes.mainhomeroute:(context)=>Mainhomepage(),
        MyRoutes.adminmenuroute:(context)=>Adminmenupage(),
        MyRoutes.editprofileroute:(context)=>EditProfilepage(),
      },
    );
  }
}