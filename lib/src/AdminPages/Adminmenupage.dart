import 'package:flutter/material.dart';
import 'package:solo_leveling/utilities/routes.dart';


class Adminmenupage extends StatefulWidget {
  const Adminmenupage({Key? key}) : super(key: key);

  @override
  _AdminmenupageState createState() => _AdminmenupageState();
}

class _AdminmenupageState extends State<Adminmenupage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFffc300),
      appBar: AppBar(
        backgroundColor: Color(0xFF6D2298),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          GestureDetector(
            onTap: (){
              //Navigator.pushNamed(context, MyRoutes.homeroute);
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.close,
                size: 35,
              ),
            ),
          ),
        ],
        title: Container(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(left: 35.0),
            child: Image.asset("images/logo.png"),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            InkWell(
              onTap: (){},
              child: Image(image: AssetImage('images/adminprofile.png'),height: 200,width: 200,),
            ),
            SizedBox(height: 5,),
            myelevatedbutton(text: 'ADMIN USER',route: '',size: 26,),
            SizedBox(height: 20,),
            myelevatedbutton(text: 'POS SALE',route: '/home',),
            SizedBox(height: 20,),
            myelevatedbutton(text: 'EDIT PROFILE',route: '/editprofile',),
            SizedBox(height: 20,),
            myelevatedbutton(text: 'CHANGE PASSWORD',route: '',),
            SizedBox(height: 20,),
            myelevatedbutton(text: 'REPORTS',route: '',),
            SizedBox(height: 20,),
            myelevatedbutton(text: 'ALL BRANCHES',route: '',),
            SizedBox(height: 20,),
            myelevatedbutton(text: "   SWITCH LANGUAGE",route: '',),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, MyRoutes.registerroute);
              },
              child: Container(
                alignment: Alignment.center,
                width:double.infinity,
                height: 60,
                child: Text('LOGOUT',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ),
              style: ButtonStyle(
                foregroundColor: getColor(Color(0xFFffc300),Color(0xFF6D2298)),
                backgroundColor: getColor(Color(0xFF6D2298), Color(0xFFffc300)),
                elevation: MaterialStateProperty.all(0), //used to make elevation 0
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class myelevatedbutton extends StatelessWidget {
  myelevatedbutton({Key? key,required this.text,this.size=22,this.height=50,required this.route}) : super(key: key);
  String text;
  double size;
  double height;
  String route;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        Navigator.pushNamed(context, route);
      },
      child: Container(
        alignment: Alignment.center,
        width:double.infinity,
        height: height,
        child: Center(
          child: Text(text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: size,
            ),
          ),
        ),
      ),
      style: ButtonStyle(
        foregroundColor: getColor(Color(0xFF6D2298), Colors.white),
        backgroundColor: getColor(Color(0xFFffc300),Color(0xFF6D2298)),
        elevation: MaterialStateProperty.all(0), //used to make elevation 0
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
