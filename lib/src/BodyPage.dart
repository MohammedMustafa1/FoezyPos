import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:solo_leveling/src/MyCounter.dart';
import 'package:solo_leveling/src/widgets/appText.dart';
import 'package:solo_leveling/src/widgets/numberfield.dart';
import 'package:solo_leveling/utilities/routes.dart';

import 'Global/global_landscape_view.dart';

class BodyPage extends StatefulWidget {
  @override
  State<BodyPage> createState() => _BodyPageState();
}
class _BodyPageState extends State<BodyPage> {
  bool changebutton = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Container(
        color: Colors.white,
        child: SlidingSheet(
          elevation: 8,
          cornerRadius: 16,
          snapSpec: const SnapSpec(
            snap: true,
            snappings: [75, 400, double.infinity],//Changed the first ine from 120 to 75.
            positioning: SnapPositioning.pixelOffset,
          ),
          body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SingleChildScrollView (
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          children: <Widget>[
                            SizedBox(width: 5,),
                            horizontalcontainer(image: 'https://wallpaperaccess.com/thumb/3231246.png',text: "Solo_Leveling",route: '/newsale',),
                            horizontalcontainer(image: 'https://wallpaperaccess.com/thumb/3231246.png',text: "Solo_Leveling",route: '/managesale',),
                            horizontalcontainer(image: 'https://wallpaperaccess.com/thumb/3231246.png',text: "Solo_Leveling",route: '/invoice',),
                            horizontalcontainer(image: 'https://wallpaperaccess.com/thumb/3231246.png',text: "Solo_Leveling",),
                            horizontalcontainer(image: 'https://wallpaperaccess.com/thumb/3231246.png',text: "Solo_Leveling",route: '/register',),
                            horizontalcontainer(image: 'https://wallpaperaccess.com/thumb/3231246.png',text: "Solo_Leveling",route: '/login',),
                            horizontalcontainer(image: 'https://wallpaperaccess.com/thumb/3231246.png',text: "Solo_Leveling",route: '/mainhome',),
                            horizontalcontainer(image: 'https://wallpaperaccess.com/thumb/3231246.png',text: "Solo_Leveling",),
                            horizontalcontainer(image: 'https://wallpaperaccess.com/thumb/3231246.png',text: "Solo_Leveling",),
                          ]
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(height: 20,),
                        Expanded(
                          child: Container(
                            height: 2,
                            decoration: BoxDecoration(
                              color: Colors.purple,
                            ),
                          ),
                        ),
                      ],
                    ),
                    //Above row is for distance between top row and line.
                    Row(
                      children: [
                        SizedBox(width: 20, height:200,),
                        Expanded(child: productcounter(image: 'https://i.ytimg.com/vi/whx0WCtc9DQ/maxresdefault.jpg',text: "Solo_Leveling",)),
                        SizedBox(width: 20, height:200,),
                        Expanded(child: productcounter(image: 'https://i.ytimg.com/vi/whx0WCtc9DQ/maxresdefault.jpg',text: "Solo_Leveling",)),
                        SizedBox(width: 20, height:200,),
                        Expanded(child: productcounter(image: 'https://i.ytimg.com/vi/whx0WCtc9DQ/maxresdefault.jpg',text: "Solo_Leveling",)),
                        SizedBox(width: 20, height:200,),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20, height:200,),
                        Expanded(child: productcounter(image: 'https://i.ytimg.com/vi/whx0WCtc9DQ/maxresdefault.jpg',text: "Solo_Leveling",)),
                        SizedBox(width: 20, height:200,),
                        Expanded(child: productcounter(image: 'https://i.ytimg.com/vi/whx0WCtc9DQ/maxresdefault.jpg',text: "Solo_Leveling",)),
                        SizedBox(width: 20, height:200,),
                        Expanded(child: productcounter(image: 'https://i.ytimg.com/vi/whx0WCtc9DQ/maxresdefault.jpg',text: "Solo_Leveling",)),
                        SizedBox(width: 20, height:200,),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20, height:200,),
                        Expanded(child: productcounter(image: 'https://i.ytimg.com/vi/whx0WCtc9DQ/maxresdefault.jpg',text: "Solo_Leveling",)),
                        SizedBox(width: 20, height:200,),
                        Expanded(child: productcounter(image: 'https://i.ytimg.com/vi/whx0WCtc9DQ/maxresdefault.jpg',text: "Solo_Leveling",)),
                        SizedBox(width: 20, height:200,),
                        Expanded(child: productcounter(image: 'https://i.ytimg.com/vi/whx0WCtc9DQ/maxresdefault.jpg',text: "Solo_Leveling",)),
                        SizedBox(width: 20, height:200,),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20, height:200,),
                        Expanded(child: productcounter(image: 'https://i.ytimg.com/vi/whx0WCtc9DQ/maxresdefault.jpg',text: "Solo_Leveling",)),
                        SizedBox(width: 20, height:200,),
                        Expanded(child: productcounter(image: 'https://i.ytimg.com/vi/whx0WCtc9DQ/maxresdefault.jpg',text: "Solo_Leveling",)),
                        SizedBox(width: 20, height:200,),
                        Expanded(child: productcounter(image: 'https://i.ytimg.com/vi/whx0WCtc9DQ/maxresdefault.jpg',text: "Solo_Leveling",)),
                        SizedBox(width: 20, height:200,),
                      ],
                    ),
                    //This row of sized box is to keep the above row above the slide sheet.
                    Row(
                      children: [
                        SizedBox(height: 80,)
                      ],
                    ),
                  ],
                ),
              )
          ),
          builder: (context, state) {
            return Container(
              height: 0,
              child: Center(
                child: Text(""),
              ),
            );
          },
          headerBuilder: (context, state) {
            return Container(
              height: 75,
              width: double.infinity,
              color: Color(0xFFf0c9ff),
              alignment: Alignment.center,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                  ),
                ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height:2.5,),
                        Padding(
                          padding: EdgeInsets.only(right: 15,left: 15),
                          child: Stack(
                            alignment: Alignment.centerRight,
                            children: [
                              Text("Due : 1500"),
                              Row(
                                children: [
                                  Text("Net Total:1500"),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 15,left: 15),
                          child: Stack(
                            alignment: Alignment.centerRight,
                            children: [
                              InkWell(
                                onTap: (){
                                  Navigator.pushNamed(context, MyRoutes.invoiceroute);
                                },
                                child: Container(
                                  height: 25,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF6D2298),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Center(child: AppText(text: "INVOICE",color: Colors.white,size: 12,bold: true,)),
                                ),
                              ),
                              Row(
                                children: [
                                  Text("Paid Amount: "),
                                  Container(
                                    width: 70,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 2.0,
                                      ),
                                    ),
                                    child: numberfield(limit: 4,),
                                  ),

                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 2.5,),
                      ],
                    ),
              )
            );
          },
        ),
      ),
    );
  }

}

//Horizontal product container
class horizontalcontainer extends StatelessWidget {
 horizontalcontainer({Key? key,required this.image, required this.text,this.route='/menu'}) : super(key: key);
 String image;
 String text;
 String route;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, route);
      },
      child: Container(
        width: 110,
        height: 110,
        color: Colors.white,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 80,
              height: 70,
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
                        spreadRadius: 8,
                    ),
                  ]
              ),
                  child:ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage(image,),
                    ),
                  ),
            ),
            Positioned(
              bottom: 0,
              child: Text(text),
            ),
          ],
        ),
      ),
    );
  }
}
//Vertical scroll image container
class productcounter extends StatelessWidget {
   productcounter({Key? key,required this.image,required this.text}) : super(key: key);
 String image;
 String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 180,
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
          ]
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Expanded(
            child: Container(
              height: 100,
              child:Padding(
                padding: const EdgeInsets.only(right: 5,left: 5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(image,),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            child: Text(text),
          ),
          Positioned(
            bottom: -1,
            child: Container(
              child: MyCounter(),
            ),
          ),

        ],
      ),
    );
  }
}
















