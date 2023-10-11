import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:solo_leveling/src/widgets/appText.dart';
import 'package:solo_leveling/src/widgets/datefield.dart';
import 'package:solo_leveling/src/widgets/numberfield.dart';
import 'package:solo_leveling/src/widgets/mytextfield.dart';
import 'package:solo_leveling/utilities/routes.dart';

class Newsalepage extends StatefulWidget {
  const Newsalepage({Key? key}) : super(key: key);

  @override
  State<Newsalepage> createState() => _NewsalepageState();
}

class _NewsalepageState extends State<Newsalepage> {
  bool changebutton = false;
  final item =['Select payment method','Cash Payment','Bank Payment','UPI Payment'];
  String? value;
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
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: InkWell(
                        onTap: (){
                          //Navigator.pushNamed(context, MyRoutes.invoiceroute);
                          Navigator.pop(context);
                        },
                        child: Image.asset("images/roundedarrow.png")
                    ),
                  ),
                ],
              ),
              Text("NEW SALE"),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SlidingSheet(
          elevation: 8,
          cornerRadius: 16,
          snapSpec: SnapSpec(
            snappings: [0.1,0.4,0.8],
        ),
          builder: (context,state){
            return Container(
              color: Color(0xFFE6E6E6),
              child:ListView(
                //List view wont work so put the below 2 lines
                shrinkWrap: true,
                primary: false,
                padding: EdgeInsets.all(16),
                children: [
                  SizedBox(height: 15,),
                  commonsaledetails(text: "Sale Account",  ),
                  SizedBox(height: 8,),
                  commonsaledetails(text: "Total Discount",  ),
                  SizedBox(height: 8,),
                  commonsaledetails(text: "Total Tax", ),
                  SizedBox(height: 8,),
                  commonsaledetails(text: "Shipping Cost", ),
                  SizedBox(height: 8,),
                  commonsaledetails(text: "Grand Total",),
                  SizedBox(height: 8,),
                  commonsaledetails(text: "Previous",  ),
                  SizedBox(height: 8,),
                  commonsaledetails(text: "Net Total",  ),
                  SizedBox(height: 8,),
                  commonsaledetails(text: "Paid Amount", ),
                  SizedBox(height: 8,),
                  commonsaledetails(text: "Due", ),
                  SizedBox(height: 8,),
                  commonsaledetails(text: "Change", ),
                  SizedBox(height: 35,),
                  Padding(
                    padding: EdgeInsets.only(right: 25,left: 25),
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Positioned(
                          left: 0,
                          child: SizedBox(
                            height: 50,
                            width: 120,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, MyRoutes.homeroute);
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Color(0xFFF58634),
                              ),
                              child: Text("Full Paid"),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          width: 120,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, MyRoutes.homeroute);
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.green,
                            ),
                            child: Text("SAVE SALE"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
          headerBuilder: (context,state){
            return Container(
              color: Color(0xFFE6E6E6),
              height: 75,
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 5,),
                  Builder(
                    builder: (context)=>InkWell(
                      onTap: ()async{
                        setState((){
                          if(changebutton==true){
                            changebutton=false;
                            // Navigator.of(context).pop();
                            SheetController.of(context)!.collapse();
                          }
                          else{
                             SheetController.of(context)!.expand();
                             changebutton=true;
                          }
                        });
                      },
                      child: Container(
                        width: 100,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(7.5),
                        ),

                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  // Text("Sale Details",style: TextStyle(color: Color(0xFF6D2298),fontSize: 24,fontWeight: FontWeight.bold,),),
                  AppText(text: 'Sale Details', color: Color(0xFF6D2298), bold: true, size: 24,)
                ],
              ),
            );
          },
          body: Scaffold(
            backgroundColor:Color(0xFFCCCCCC),
            body: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 250,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Color(0xFFE6E6E6),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          bottomLeft:Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.only(right: 25,left: 25),
                            child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                Row(
                                  children: [
                                    Text("Customer\nName/Phone",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,),),
                                  ],
                                ),
                                Container(
                                  width: 200,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(6),
                                    boxShadow: [
                                      BoxShadow(
                                        spreadRadius: 2,
                                        blurRadius: 2,
                                        color: Colors.black.withOpacity(0.15),
                                      ),
                                    ],
                                  ),
                                  child: mytextfield(text: 'Customer Name 01',),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20,),
                          Padding(
                            padding: EdgeInsets.only(right: 25,left: 25),
                            child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                SizedBox(width: 20,),
                                Row(
                                  children: [
                                    Text("Payment Type",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,),),
                                  ],
                                ),
                                SizedBox(width: 53,),
                                Container(
                                  width: 200,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(6),
                                    boxShadow: [
                                      BoxShadow(
                                        spreadRadius: 2,
                                        blurRadius: 2,
                                        color: Colors.black.withOpacity(0.15),
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left:8,right: 8),
                                    child: DropdownButton(
                                      value: value,
                                      isExpanded: true,
                                      hint: Text("Select payment method",style: TextStyle(color: Colors.grey,),),
                                      elevation: 0,
                                      underline: SizedBox(),
                                      iconSize: 0,
                                      items: item.map(buildMenuItem).toList(),
                                      onChanged: (value){
                                        setState(() {
                                          this.value = value as String?;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ],

                            ),
                          ),
                          SizedBox(height: 20,),
                          Padding(
                            padding: EdgeInsets.only(left: 25,right: 125),
                            child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                Row(
                                  children: [
                                    Text("Date",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,),),
                                  ],
                                ),
                                Container(
                                  width: 100,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(6),
                                    boxShadow: [
                                      BoxShadow(
                                        spreadRadius: 2,
                                        blurRadius: 2,
                                        color: Colors.black.withOpacity(0.15),
                                      ),
                                    ],
                                  ),
                                  child: datefield(),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20,),
                          Padding(
                            padding: EdgeInsets.only(right: 25,left: 25),
                            child: Row(
                              children: [
                                Expanded(child: Text("Invoice no.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,),)),
                                Container(
                                  width: 95,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(6),
                                    boxShadow: [
                                      BoxShadow(
                                        spreadRadius: 2,
                                        blurRadius: 2,
                                        color: Colors.black.withOpacity(0.15),
                                      ),
                                    ],
                                  ),
                                  child: numberfield(text: "0000",limit: 4,),
                                ),
                                SizedBox(width: 10,),
                                InkWell(
                                  onTap: (){
                                    Navigator.pushNamed(context, MyRoutes.managesaleroute);
                                  },
                                  child: Container(
                                    width: 95,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF00A3FF),
                                      borderRadius: BorderRadius.circular(6),
                                      boxShadow: [
                                        BoxShadow(
                                          spreadRadius: 2,
                                          blurRadius: 2,
                                          color: Colors.black.withOpacity(0.2),
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: Text("Manage Sale",style: TextStyle(color: Colors.white,fontSize: 14.5,),),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 25,),
                    Table(
                      columnWidths: { 0: FlexColumnWidth(2),},
                      children: [
                        TableRow(
                          children: [
                            Center(child: Text("Item",style: TextStyle(fontSize: 16),)),
                            Center(child: Text("Qnty",style: TextStyle(fontSize: 16),)),
                            Center(child: Text("Rate",style: TextStyle(fontSize: 16),)),
                            Center(child: Text("Dis.%",style: TextStyle(fontSize: 16),)),
                            Center(child: Text("Total",style: TextStyle(fontSize: 16),)),
                            Center(child: Text("Action",style: TextStyle(fontSize: 16),)),

                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Expanded(flex:2,child: commonContainer(height: 45.0, width: 90.0, text: 'Item Name')),
                        Expanded(flex:1,child: commonContainer(height: 45.0, width: 50.0, text: '1')),
                        Expanded(flex:1,child: commonContainer(height: 45.0, width: 60.0, text: '0.00')),
                        Expanded(flex:1,child: commonContainer(height: 45.0, width: 55.0, text: '0.00')),
                        Expanded(flex:1,child: commonContainer(height: 45.0, width: 55.0, text: '0.00')),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Row(
                              children: [
                                Expanded(flex: 1,child: Container(alignment:Alignment.center,child: Image.asset("images/bin.png",width: 30,height: 30,)),),
                                Expanded(flex: 1,child: Container(alignment:Alignment.center,child: Image.asset("images/roundedplus.png",width: 30,height: 30,)),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Expanded(flex:2,child: commonContainer(height: 45.0, width: 90.0, text: 'Item Name')),
                        Expanded(flex:1,child: commonContainer(height: 45.0, width: 50.0, text: '1')),
                        Expanded(flex:1,child: commonContainer(height: 45.0, width: 60.0, text: '0.00')),
                        Expanded(flex:1,child: commonContainer(height: 45.0, width: 55.0, text: '0.00')),
                        Expanded(flex:1,child: commonContainer(height: 45.0, width: 55.0, text: '0.00')),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Row(
                              children: [
                                Expanded(flex: 1,child: Container(alignment:Alignment.center,child: Image.asset("images/bin.png",width: 30,height: 30,)),),
                                Expanded(flex: 1,child: Container(alignment:Alignment.center,child: Image.asset("images/roundedplus.png",width: 30,height: 30,)),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Expanded(flex:2,child: commonContainer(height: 45.0, width: 90.0, text: 'Item Name')),
                        Expanded(flex:1,child: commonContainer(height: 45.0, width: 50.0, text: '1')),
                        Expanded(flex:1,child: commonContainer(height: 45.0, width: 60.0, text: '0.00')),
                        Expanded(flex:1,child: commonContainer(height: 45.0, width: 55.0, text: '0.00')),
                        Expanded(flex:1,child: commonContainer(height: 45.0, width: 55.0, text: '0.00')),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Row(
                              children: [
                                Expanded(flex: 1,child: Container(alignment:Alignment.center,child: Image.asset("images/bin.png",width: 30,height: 30,)),),
                                Expanded(flex: 1,child: Container(alignment:Alignment.center,child: Image.asset("images/roundedplus.png",width: 30,height: 30,)),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Expanded(flex:2,child: commonContainer(height: 45.0, width: 90.0, text: 'Item Name')),
                        Expanded(flex:1,child: commonContainer(height: 45.0, width: 50.0, text: '1')),
                        Expanded(flex:1,child: commonContainer(height: 45.0, width: 60.0, text: '0.00')),
                        Expanded(flex:1,child: commonContainer(height: 45.0, width: 55.0, text: '0.00')),
                        Expanded(flex:1,child: commonContainer(height: 45.0, width: 55.0, text: '0.00')),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Row(
                              children: [
                                Expanded(flex: 1,child: Container(alignment:Alignment.center,child: Image.asset("images/bin.png",width: 30,height: 30,)),),
                                Expanded(flex: 1,child: Container(alignment:Alignment.center,child: Image.asset("images/roundedplus.png",width: 30,height: 30,)),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
          ),
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
  DropdownMenuItem<String> buildMenuItem(String item)=>DropdownMenuItem(
      value: item,
    child: Text(
      item,
      style: TextStyle(color: Colors.black.withOpacity(0.6)),
    ),
  );
}

// body 3rd row
class commonContainer extends StatelessWidget {
  commonContainer({Key? key, required this.height, required this.width, required this.text}) : super(key: key);
  double height;
  double width;
  String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 2,left: 5),
      child: Container(
        height: height,
        width: width,
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
        child: Center(child: Text(text,style: TextStyle(fontSize: 12),)),
      ),
    );
  }
}

// Sale detail container
class commonsaledetails extends StatelessWidget {
  commonsaledetails({Key? key, required this.text}) : super(key: key);
 String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 50,left: 50),
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Row(
            children: [
              Text(text,),
            ],
          ),
          Positioned(
            child: Container(
              width: 130,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Color(0xFFE6E6E6),
                border: Border.all(color: Color(0xFF6D2298),),
              ),
              child: numberfield(),
            ),
          ),
        ],
      ),
    );
  }
}



