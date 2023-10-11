import 'package:flutter/material.dart';
import 'package:solo_leveling/src/widgets/menupopup.dart';
import 'package:solo_leveling/utilities/routes.dart';
class Menupage extends StatefulWidget {
  const Menupage({Key? key}) : super(key: key);

  @override
  _MenupageState createState() => _MenupageState();
}

class _MenupageState extends State<Menupage> {
  // List<String> _locations = ['SALES', 'NEW SALES', 'MANAGE SALES']; // Sales matches so it works keep 4 distance if want center
  // String _selectedLocation='SALES'; // First element must match
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
            SizedBox(height: 90,),
            myelevatedbutton(text: 'POS',route: '/home',),
            SizedBox(height: 40,),
            Stack(
              children: [
                ElevatedButton(
                  onPressed: (){
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
                menupopup(),
              ],
            ),
            /*DropdownButton(
              isExpanded: true,
              elevation: 0,
              underline: SizedBox(),
              value: _selectedLocation,
              onChanged: (newValue) {
                setState(() {
                  _selectedLocation = newValue.toString();
                });
              },
              items: _locations.map((location) {
                return DropdownMenuItem(
                  child: Center(
                      child: ElevatedButton(
                        onPressed: (){},
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          child: Center(
                            child: Text(location, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22,),),
                          ),
                        ),
                        style: ButtonStyle(
                          foregroundColor: getColor(Color(0xFF6D2298), Colors.white),
                          backgroundColor: getColor(Color(0xFFffc300),Color(0xFF6D2298)),
                          elevation: MaterialStateProperty.all(0), //used to make elevation 0
                        ),
                      ),
                  ),
                  value: location,
                );
              }).toList(),
            ),*/  //old attemp to make it with dropdown menu
            SizedBox(height: 40,),
            myelevatedbutton(text: 'PRODUCT',route: '',),
            SizedBox(height: 40,),
            myelevatedbutton(text: 'CUSTOMER',route: '',),
            SizedBox(height: 40,),
            myelevatedbutton(text: 'RETURN',route: '',),
            SizedBox(height: 40,),
            myelevatedbutton(text: "   SWITCH\nLANGUAGE",height: 60,route: '',),
            SizedBox(height: 80,),
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

