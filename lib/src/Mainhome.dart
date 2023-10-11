import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:solo_leveling/src/widgets/appText.dart';
import 'package:solo_leveling/src/widgets/indicators_piechart_formainhome.dart';
import 'package:solo_leveling/src/widgets/piechart%20_section_fotmainhome.dart';
import 'package:solo_leveling/utilities/routes.dart';
import 'package:charts_flutter/flutter.dart'as charts;


class Mainhomepage extends StatefulWidget {
  const Mainhomepage({Key? key}) : super(key: key);

  //for bar graph
  static final List<Sales> salesData=[
    Sales('Jan', 20, Color(0xFF6D2298)),
    Sales('Feb', 30, Color(0xFF6D2298)),
    Sales('Mar', 40, Color(0xFF6D2298)),
    Sales('Apr', 50, Color(0xFF6D2298)),
    Sales('May', 60, Color(0xFF6D2298)),
    Sales('Jun', 70, Color(0xFF6D2298)),
    Sales('Jul', 80, Color(0xFF6D2298)),
    Sales('Aug', 90, Color(0xFF6D2298)),
    Sales('Sep', 100, Color(0xFF6D2298)),
    Sales('Oct', 110, Color(0xFF6D2298)),
    Sales('Nov', 120, Color(0xFF6D2298)),
    Sales('Dec', 130, Color(0xFF6D2298)),
  ];

  @override
  State<Mainhomepage> createState() => _MainhomepageState();
}

class _MainhomepageState extends State<Mainhomepage> {

   int touchedIndex=0;

  @override
  Widget build(BuildContext context) {

    //for bargraph
    List <charts.Series<Sales, String>> quantity=[
      charts.Series(
      data: Mainhomepage.salesData,
        id:"Quantity",
        domainFn: (Sales pops, _) => pops.months,
        measureFn: (Sales pops, _) => pops.sales,
        colorFn: (Sales pops, _) => charts.ColorUtil.fromDartColor(pops.barcolor)
    )
    ];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF6D2298),
        actions: [
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, MyRoutes.menuroute);
            },
            child: Icon(
              Icons.more_vert,
              size: 40,
            ),
          ),
        ],
        centerTitle: true,
        title: Expanded(
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              Icon(
                Icons.search,
                color: Colors.white,
                size: 30,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                    ),
                  ),
                  Text("Branch 01"),
                ],
              ),
            ],
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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: InkWell(
               onTap: () {
                 Navigator.pushNamed(context, MyRoutes.homeroute);
               },
               child: Padding(
                 padding: EdgeInsets.only(top: 10,bottom: 10),
                 child: Container(
                   width: 130,
                   height: 50,
                   decoration: BoxDecoration(
                     color: Colors.green,
                     borderRadius: BorderRadius.circular(8),
                   ),
                   child: Center(child: AppText(text: "POS SALE",color: Colors.white,size: 16,)),
                 ),
               ),
                    ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Container(
                    color: Colors.purple,
                      height: 2,
                ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(child: smallcontainer(text: "     Total\nCustomer",number: "10",image: 'images/MHTC.png',)),
                Expanded(child: smallcontainer(text: "   Total\nProduct",number: "10",image: 'images/MHTP.png',)),
              ],
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                Expanded(child: smallcontainer(text: "   Total\nSupplier",number: "10",image: 'images/MHTSP.png',)),
                Expanded(child: smallcontainer(text: "Total\n Sale",number: "10",image: 'images/MHTS.png',)),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(right: 10,left: 10),
                    child: Container(
                      height: 340,
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
                              Expanded(
                                  child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                  color: Color(0xFFE6E6E6),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 8,
                                      offset: Offset(0,9),//Change position of shadow
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 1,
                                    ),
                                  ],
                                ),
                                    child: Center(child: AppText(text: "Best Sale Product",color: Color(0xFFA0A0A0),bold: true,size: 18,)),
                              )),
                            ],
                          ),
                          SizedBox(height: 15,),
                          Padding(
                            padding: const EdgeInsets.only(right: 25,left: 35),
                            child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                InkWell(
                                  onTap: (){
                                    //Navigator.pushNamed(context, MyRoutes.homeroute);
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 90,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF05A155),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(child: AppText(text: "See All",color: Colors.white,),),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 25,
                                      width: 25,
                                      color: Color(0xFF6D2298),
                                    ),
                                    SizedBox(width: 5,),
                                    AppText(text: "Sale Products",color: Color(0xFF9CA3AF),bold: true,),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 25,),
                          Container(
                            width: 400,//MediaQuery.of(context).size.width,
                            height: 200,//MediaQuery.of(context).size.height / 2,
                            child: charts.BarChart(quantity,animate: true,),
                          ),
                          AppText(text: "Products",color: Color(0xFF9CA3AF),),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 10,left: 10),
                    child: Container(
                      height: 340,
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
                                  color: Color(0xFFE6E6E6),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 8,
                                      offset: Offset(0,9),//Change position of shadow
                                      color: Colors.black.withOpacity(0.2),
                                      spreadRadius: 1,
                                    ),
                                  ],
                                ),
                                child: Center(child: AppText(text: "Expense Statement",color: Color(0xFFA0A0A0),bold: true,size: 18,)),
                              )),
                            ],
                          ),
                          SizedBox(height: 15,),
                          Padding(
                            padding: const EdgeInsets.only(right: 25,left: 35),
                            child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                InkWell(
                                  onTap: (){
                                    //Navigator.pushNamed(context, MyRoutes.homeroute);
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF05A155),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(child: AppText(text: "Filter",color: Colors.white,),),
                                  ),
                                ),
                                Row(
                                  children: [
                                    ImageIcon(AssetImage("images/calender.png",),color: Color(0xFF376495),),
                                    SizedBox(width: 5,),
                                    AppText(text: "Sale Products",color: Color(0xFF9CA3AF),bold: true,),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 25,),
                          Row(
                            children: [
                              Container(
                                width: 270,//MediaQuery.of(context).size.width,
                                height: 190,//MediaQuery.of(context).size.height / 2,
                                child: PieChart(
                                  PieChartData(
                                    pieTouchData: PieTouchData(
                                      touchCallback: (pieTouchResponse) {
                                        setState(() {
                                          if (pieTouchResponse.touchInput is FlLongPressEnd ||
                                              pieTouchResponse.touchInput is FlPanEnd) {
                                            touchedIndex = -1;
                                          } else {
                                            touchedIndex = pieTouchResponse.touchedSectionIndex;
                                          }
                                        });
                                      },
                                    ),
                                    borderData: FlBorderData(show: false),
                                    sectionsSpace: 0,
                                    centerSpaceRadius: 35,
                                    sections: getSections(touchedIndex),
                                  ),
                                ),
                              ),
                              //IndicatorsWidget(),
                            ],
                          ),
                          /*Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16),
                                child: IndicatorsWidget(),
                              ),
                            ],
                          ),*/
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}


// 4 small container
class smallcontainer extends StatelessWidget {
  smallcontainer({Key? key,required this.text,required this.number,required this.image}) : super(key: key);
  String image;
  String text;
  String number;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10,left: 10),
      child: Container(
        width: 185,
        height: 250,
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
                Expanded(
                  child: Container(
                    width: 185,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFFE6E6E6),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(child: Text(text,style: TextStyle(color: Color(0xFF2E3A59),fontSize: 20,fontWeight: FontWeight.bold),),),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Container(height: 70,child: Image.asset(image,fit: BoxFit.cover,)),
            ),
            Expanded(child: SizedBox()),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    width: 185,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFC300),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(child: Text(number,style: TextStyle(color: Color(0xFF2E3A59),fontSize: 20,fontWeight: FontWeight.bold),),),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//for bar graph
class Sales{
  final String months;
  final int sales;
  final Color barcolor;
  Sales(this.months,this.sales,this.barcolor);
}