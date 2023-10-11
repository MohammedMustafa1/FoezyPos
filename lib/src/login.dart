


// Not actually used



import 'package:solo_leveling/utilities/routes.dart';
import 'package:flutter/material.dart';


class loginpage extends StatefulWidget {

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  String name = "";
  bool changebutton = false;
  final _formkey = GlobalKey<FormState>();
  movetohome(BuildContext context) async{
    if(_formkey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeroute);
      setState(() {
        changebutton = false;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFffc300),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 150,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft:Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 8,
                          offset: Offset(0,0),//Change position of shadow
                          color: Colors.black.withOpacity(0.4),
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 50,
                      child: Image(image: AssetImage("images/logo.png"),)),
                ],
              ),
              SizedBox(height: 125,),
              Container(
                height: 60,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFffc300),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 8,
                      offset: Offset(0,0),//Change position of shadow
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 4,
                    ),
                  ]
                ),
                child: Row(
                  children: [
                    Container(
                      width:160,
                      height: 60,
                      child: Center(child: Text("LOGIN",
                        style: TextStyle(
                        color: Color(0xFF6D2298),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),)),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, MyRoutes.registerroute);
                      },
                      child: Container(
                        width: 160,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF6D2298),
                        ),
                        child: Center(child: Text("REGISTER",
                          style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 63,),
              Container(
                child: Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 40.0),//horizontal was 32
                        child: Column(
                          children: [
                            Container(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10,),
                                child: const Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text("USERNAME",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: TextFormField(
                                decoration:InputDecoration(
                                  border: InputBorder.none,//To Remove underline below text.
                                  hintText: "Enter Username",
                                  labelText: "",
                                ),
                                onChanged: (value){
                                  name = value;
                                  setState(() {});
                                },
                                validator: (value) {
                                  if (value!.isEmpty){
                                    return "Username cannot be empty";
                                  }
                                  else{
                                    return null;
                                  }
                                },
                              ),
                            ),
                            SizedBox(height: 40,),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10,),
                                child: const Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text("PASSWORD",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: TextFormField(
                                obscureText: true,
                                decoration:InputDecoration(
                                  border: InputBorder.none,//To Remove underline below text.
                                  hintText: "Enter password",
                                  labelText: "",
                                ),
                                validator: (String? value){
                                  if (value!.isEmpty){
                                    return "password cannot be empty";
                                  }
                                  else if(value.length<6){
                                    return 'password must contain 6 character';
                                  }
                                  else{
                                    return null;
                                  }
                                },
                              ),
                            ),
                            SizedBox(height: 32.0,),
                            Material(
                              color: Color(0xFF6D2298),
                              borderRadius: BorderRadius.circular(changebutton?60:8),
                              child: InkWell(
                                onTap: () => movetohome(context),
                                child: AnimatedContainer(
                                  duration: Duration(seconds: 1),
                                  width: changebutton ? 60: 350,
                                  height: 60,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 8,
                                          offset: Offset(0,0),//Change position of shadow
                                          color: Colors.black.withOpacity(0.2),
                                          spreadRadius: 6,
                                        ),
                                      ]
                                  ),
                                  child: changebutton?
                                  Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                      :Text("LOGIN",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 35,),
                            Row(
                              children: [
                                SizedBox(width: 60,),
                                Container(
                                  child: Text("Don't have an Account ?"),
                                ),
                                InkWell(
                                  onTap: (){
                                    Navigator.pushNamed(context, MyRoutes.registerroute);
                                  },
                                  child: Container(
                                    child: Text(" Register",
                                      style: TextStyle(
                                        color: Color(0xFF6D2298),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}
