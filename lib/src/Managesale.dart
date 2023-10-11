import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:solo_leveling/src/widgets/appText.dart';
import 'package:solo_leveling/src/widgets/datefield.dart';
import 'package:solo_leveling/utilities/routes.dart';

class Managesalepage extends StatefulWidget {
  const Managesalepage({Key? key}) : super(key: key);

  @override
  State<Managesalepage> createState() => _ManagesalepageState();
}


class _ManagesalepageState extends State<Managesalepage> {
  String? _selected;
  List<Map> _myJson = [
    {
      'id' : '1',
      'image' : 'images/downarrow.png',
      'name' : '',
    },
    {
      'id' : '2',
      'image' : 'images/bin.png',
      'name' : ''
    },
    {
      'id' : '3',
      'image' : 'images/roundedplus.png',
      'name' : ''
    },
    {
      'id' : '4',
      'image' : 'images/pen.png',
      'name' : ''
    },
    {
      'id' : '5',
      'image' : 'images/pdf.png',
      'name' : ''
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF6D2298),
        title: Expanded(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10,),
                    child: InkWell(
                        onTap: (){Navigator.pop(context);},
                        child: Image.asset("images/roundedarrow.png")
                    ),
                  ),
                ],
              ),
              Text("MANAGE SALE"),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SlidingSheet(
          elevation: 6,
          snapSpec: const SnapSpec(
            snap: true,
            snappings: [90, 400, double.infinity],//Changed the first ine from 120 to 75.
            positioning: SnapPositioning.pixelOffset,
          ),
          body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFFE6E6E6),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(25),
                                bottomRight: Radius.circular(25),
                              ),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 25),
                                    child: Row(
                                     children: [
                                       Text("Start Date"),
                                       SizedBox(width: 5,),
                                       Container(
                                         width: 100,
                                         height: 30,
                                         decoration: BoxDecoration(
                                           color: Colors.white,
                                           borderRadius: BorderRadius.circular(6),
                                           boxShadow: [
                                             BoxShadow(
                                               spreadRadius: 2,
                                               color: Colors.black.withOpacity(0.1),
                                               blurRadius: 4,
                                             ),
                                           ],
                                         ),
                                         child: datefield(color: Color(0xFF757575),),
                                       ),
                                     ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 25),
                                    child: Row(
                                      children: [
                                        Text("END DATE"),
                                        SizedBox(width: 5,),
                                        Container(
                                          width: 100,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(6),
                                            boxShadow: [
                                              BoxShadow(
                                                spreadRadius: 2,
                                                color: Colors.black.withOpacity(0.1),
                                                blurRadius: 4,
                                              ),
                                            ],
                                          ),
                                          child: datefield(color: Color(0xFF757575),),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 90,
                            alignment: Alignment.center,
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    spreadRadius: 4,
                                    color: Colors.black.withOpacity(0.15),
                                    blurRadius: 4,
                                  ),
                                ],
                              ),
                              child: SizedBox(
                                height: 40,
                                width: 120,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, MyRoutes.newsaleroute);
                                  },
                                  style: TextButton.styleFrom(
                                    backgroundColor: Color(0xFF00A3FF),
                                  ),
                                  child: Text("NEW SALE"),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 90,
                            alignment: Alignment.center,
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    spreadRadius: 4,
                                    color: Colors.black.withOpacity(0.15),
                                    blurRadius: 4,
                                  ),
                                ],
                              ),
                              child: SizedBox(
                                height: 40,
                                width: 120,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, MyRoutes.homeroute);
                                  },
                                  style: TextButton.styleFrom(
                                    backgroundColor: Color(0xFF05A155),
                                  ),
                                  child: Text("POS SALE"),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    tablehead(),//Header
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(right: 5,left: 5),
                            child: Row(
                              children: [
                                Expanded(child: tablecontainer(text:"01",),),
                                Expanded(flex: 2, child: tablecontainer(text:"0001",),),
                                Expanded(child: tablecontainer(text:"Admin",),),
                                Expanded(child:tablecontainer(text:"Customer\n       01",size: 9,),),
                                Expanded(child: tablecontainer(text:"\$55000",),),
                                Expanded(child: tablecontainer(text:"01Dec\n 2021",),),
                                Expanded(child: Padding(
                                  padding: EdgeInsets.only(right: 3,left: 3),
                                  child: Container(
                                    height: 45,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          spreadRadius: 1,
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 8,
                                        ),
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 10,left: 10),
                                      child: DropdownButton(
                                        iconSize: 0,
                                        isExpanded: true,
                                        underline: SizedBox(),
                                        hint: Center(child: Image.asset("images/downarrow.png",height: 20,width: 20,)),
                                        //value: _selected,//allows to change the icon
                                        onChanged: (newvalue){
                                          setState(() {
                                            _selected = newvalue as String?;
                                          });
                                        },
                                        items: _myJson.map((bankItem){
                                          String two = '2';//indirect way
                                          return DropdownMenuItem(
                                            value: bankItem['id'].toString(),
                                            child: InkWell(
                                            onTap: (){
                                              if(bankItem['id'] == two){
                                                setState(() {
                                                  Navigator.pushNamed(context, '/home');
                                                });
                                              }
                                              else if(bankItem['id'] == '1'){
                                                setState(() {
                                                  Navigator.pop(context);
                                                });
                                              }
                                              else if(bankItem['id'] == '3'){
                                                setState(() {
                                                  Navigator.pushNamed(context, '/adminhome');
                                                });
                                              }
                                              else if(bankItem['id'] == '4'){
                                                setState(() {
                                                  Navigator.pushNamed(context, '/editprofile');
                                                });
                                              }
                                            },
                                              child: Container(alignment:Alignment.center,child: Image.asset(bankItem['image'],height: 20,width: 20,)),
                                            ),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  ),
                                ),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(right: 5,left: 5),
                            child: Row(
                              children: [
                                Expanded(child: tablecontainer(text:"01",),),
                                Expanded(flex: 2, child: tablecontainer(text:"0001",),),
                                Expanded(child: tablecontainer(text:"Admin",),),
                                Expanded(child:tablecontainer(text:"Customer\n       01",size: 9,),),
                                Expanded(child: tablecontainer(text:"\$55000",),),
                                Expanded(child: tablecontainer(text:"01Dec\n 2021",),),
                                Expanded(child: Padding(
                                  padding: EdgeInsets.only(right: 3,left: 3),
                                  child: Container(
                                    height: 45,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          spreadRadius: 1,
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 8,
                                        ),
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 10,left: 10),
                                      child: DropdownButton(
                                        iconSize: 0,
                                        isExpanded: true,
                                        underline: SizedBox(),
                                        hint: Center(child: Image.asset("images/downarrow.png",height: 20,width: 20,)),
                                        //value: _selected,//allows to change the icon
                                        onChanged: (newvalue){
                                          setState(() {
                                            _selected = newvalue as String?;
                                          });
                                        },
                                        items: _myJson.map((bankItem){
                                          return DropdownMenuItem(
                                            value: bankItem['id'].toString(),
                                            child: Center(child: Image.asset(bankItem['image'],height: 20,width: 20,)),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  ),
                                ),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(right: 5,left: 5),
                            child: Row(
                              children: [
                                Expanded(child: tablecontainer(text:"01",),),
                                Expanded(flex: 2, child: tablecontainer(text:"0001",),),
                                Expanded(child: tablecontainer(text:"Admin",),),
                                Expanded(child:tablecontainer(text:"Customer\n       01",size: 9,),),
                                Expanded(child: tablecontainer(text:"\$55000",),),
                                Expanded(child: tablecontainer(text:"01Dec\n 2021",),),
                                Expanded(child: Padding(
                                  padding: EdgeInsets.only(right: 3,left: 3),
                                  child: Container(
                                    height: 45,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          spreadRadius: 1,
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 8,
                                        ),
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 10,left: 10),
                                      child: DropdownButton(
                                        iconSize: 0,
                                        isExpanded: true,
                                        underline: SizedBox(),
                                        hint: Center(child: Image.asset("images/downarrow.png",height: 20,width: 20,)),
                                        //value: _selected,//allows to change the icon
                                        onChanged: (newvalue){
                                          setState(() {
                                            _selected = newvalue as String?;
                                          });
                                        },
                                        items: _myJson.map((bankItem){
                                          return DropdownMenuItem(
                                            value: bankItem['id'].toString(),
                                            child: Center(child: Image.asset(bankItem['image'],height: 20,width: 20,)),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  ),
                                ),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(right: 5,left: 5),
                            child: Row(
                              children: [
                                Expanded(child: tablecontainer(text:"01",),),
                                Expanded(flex: 2, child: tablecontainer(text:"0001",),),
                                Expanded(child: tablecontainer(text:"Admin",),),
                                Expanded(child:tablecontainer(text:"Customer\n       01",size: 9,),),
                                Expanded(child: tablecontainer(text:"\$55000",),),
                                Expanded(child: tablecontainer(text:"01Dec\n 2021",),),
                                Expanded(child: Padding(
                                  padding: EdgeInsets.only(right: 3,left: 3),
                                  child: Container(
                                    height: 45,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          spreadRadius: 1,
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 8,
                                        ),
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 10,left: 10),
                                      child: DropdownButton(
                                        iconSize: 0,
                                        isExpanded: true,
                                        underline: SizedBox(),
                                        hint: Center(child: Image.asset("images/downarrow.png",height: 20,width: 20,)),
                                        //value: _selected,//allows to change the icon
                                        onChanged: (newvalue){
                                          setState(() {
                                            _selected = newvalue as String?;
                                          });
                                        },
                                        items: _myJson.map((bankItem){
                                          return DropdownMenuItem(
                                            value: bankItem['id'].toString(),
                                            child: Center(child: Image.asset(bankItem['image'],height: 20,width: 20,)),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  ),
                                ),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 100,),
                  ],
                ),
              ),
          ),
          builder: (context,state){
            return Container(
              height: 0,
              child: Container(
                child: Text(""),
              ),
            );
          },
          headerBuilder: (Context,state){
            return Expanded(
              child: Container(
                height: 90,
                color: Color(0xFFE6E6E6),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.center,
                        child: Text("Total : \$ 85500",
                        style: TextStyle(
                          color: Color(0xFF7E7E7E),
                          fontWeight: FontWeight.bold,
                          fontSize: 22
                        ),
                        ),
                      ),
                    ),
                    Container(
                      width: 1,
                      height: 65,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black,),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.only(right: 5,left: 5),
                        child: Row(
                          children: [
                            Expanded(
                                child:Padding(
                                  padding: EdgeInsets.only(right: 3,left: 3),
                                  child: InkWell(
                                    onTap: (){
                                      Navigator.pushNamed(context, MyRoutes.homeroute);
                                    },
                                    child: Container(
                                      height: 20,
                                      width: 40,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF05A155),
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: Text("CSV",style: TextStyle(color: Colors.white,fontSize:11,),),
                                    ),
                                  ),
                                ),
                            ),
                            Expanded(
                                child:Padding(
                                  padding: EdgeInsets.only(right: 3,left: 3),
                                  child: InkWell(
                                    onTap: (){
                                      Navigator.pushNamed(context, MyRoutes.homeroute);
                                    },
                                    child: Container(
                                      height: 20,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF05A155),
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: Center(child: Text("EXCEL",style: TextStyle(color: Colors.white,fontSize:11,),)),
                                    ),
                                  ),
                                ),
                            ),
                            Expanded(
                                child:Padding(
                                  padding: EdgeInsets.only(right: 3,left: 3),
                                  child: InkWell(
                                    onTap: (){
                                      Navigator.pushNamed(context, MyRoutes.homeroute);
                                    },
                                    child: Container(
                                      height: 20,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF05A155),
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: Center(child: Text("PDF",style: TextStyle(color: Colors.white,fontSize:11,),)),
                                    ),
                                  ),
                                ),
                            ),
                            Expanded(
                                child:Padding(
                                  padding: EdgeInsets.only(right: 3,left: 3),
                                  child: InkWell(
                                    onTap: (){
                                      Navigator.pushNamed(context, MyRoutes.homeroute);
                                    },
                                    child: Container(
                                      height: 20,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF05A155),
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: Center(child: Text("COPY",style: TextStyle(color: Colors.white,fontSize:11,),)),
                                    ),
                                  ),
                                ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
          canvasColor: Color(0xFFffc300),
          textTheme: Theme.of(context).textTheme.copyWith(
            caption: TextStyle(
              color: Colors.purple,
            ),
          ), //copyWith
        ), // sets the inactive color of the `BottomNavigationBar`/copyWith above one
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, MyRoutes.mainhomeroute);
                },
                child: ImageIcon(
                  AssetImage('images/HOME.png'),
                  color: Colors.purple,
                  size: 30,
                ),
              ),
              title: Text("",style: TextStyle(fontSize: 0)),
              // label: 'hjhkjhk',
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, MyRoutes.managesaleroute);
                },
                child: ImageIcon(
                  AssetImage('images/CUSTOMER.png'),
                  color: Colors.purple,
                  size: 30,
                ),
              ),
              title: Text("",style: TextStyle(fontSize: 0)),
              // label: 'hjhkjhk',
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, MyRoutes.homeroute);
                },
                child: ImageIcon(
                  AssetImage('images/POS.png'),
                  color: Colors.purple,
                  size: 50,
                ),
              ),
              title: Text("",style: TextStyle(fontSize: 0)),
              // label: 'hjhkjhk',
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, MyRoutes.newsaleroute);
                },
                child: ImageIcon(
                  AssetImage('images/PRODUCT.png'),
                  color: Colors.purple,
                  size: 30,
                ),
              ),
              title: Text("",style: TextStyle(fontSize: 0)),
              // label: 'hjhkjhk',
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, MyRoutes.invoiceroute);
                },
                child: ImageIcon(
                  AssetImage('images/RETURN.png'),
                  color: Colors.purple,
                  size: 30,
                ),
              ),
              title: Text("",style: TextStyle(fontSize: 0)),
              // label: 'hjhkjhk',
            ),
          ],
        ),
      ), //Original botton nav bar
    );
  }
}

class tablehead extends StatelessWidget {
  const tablehead({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 5,right: 5),
            child: Container(
              height: 35,
              decoration: BoxDecoration(
                color: Color(0xFF6D2298),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(width: 1,color: Colors.white,),
                        ),
                      ),
                      child: Text("SL.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(width: 1,color: Colors.white,),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(right: 10,left: 10),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                child: Text("Invoice No",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ),
                            Image.asset("images/Managesale.png",height: 14,width: 14,),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(width: 1,color: Colors.white,),
                        ),
                      ),
                      child: Text("Sale By",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(width: 1,color: Colors.white,),
                        ),
                      ),
                      child: Text("Customer\n   Name",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(width: 1,color: Colors.white,),
                        ),
                      ),
                      child: Text("   Total\n Amount",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(width: 1,color: Colors.white,),
                        ),
                      ),
                      child: Text("Date",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Text("Action",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class tablecontainer extends StatelessWidget {
  tablecontainer({
    Key? key,
    required this.text,
    this.size = 10,
  }) : super(key: key);
  String text;
  double size;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 3,left: 3),
      child: Container(
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              spreadRadius: 1,
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
            ),
          ],
        ),
        child: Center(child: Text(text,style: TextStyle(fontSize: size),)),
      ),
    );
  }
}


