
import 'dart:ui';
import 'package:solo_leveling/src/Global/globalvariable.dart';
import 'package:flutter/widgets.dart';


void fn(){
  window.physicalSize;
  var size = window.physicalSize;
  late double screenWidth;
  late double ratio;
  ratio=window.devicePixelRatio;
  print(ratio);
  //ratio 2 then 130 per inch
  screenWidth = window.physicalSize.width / window.devicePixelRatio;
  double height = size.height;
  double width = size.width;
  print(screenWidth);
  print(width);
  print(height);
  if(width>=2048){
    lp = 250;
    rp = 250;
  }
  else if(width>1080){
    lp = 125;
    rp = 125;
  }
  else{
    lp = 25;
    rp = 25;
  }
}

class SizeConfig {
 static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? blockSizeHorizontal;
  static double? blockSizeVertical;

 void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    blockSizeHorizontal = (screenWidth! / 100);
    blockSizeVertical = (screenHeight! / 100);
    print(blockSizeHorizontal);
    print(blockSizeVertical);
 }
}