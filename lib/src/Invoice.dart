
import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:solo_leveling/src/widgets/appText.dart';
import 'package:solo_leveling/src/widgets/eyepopup.dart';
import 'package:solo_leveling/utilities/routes.dart';


class
Invoicepage extends StatefulWidget {
  const Invoicepage({Key? key}) : super(key: key);

  @override
  _InvoicepageState createState() => _InvoicepageState();
}

class _InvoicepageState extends State<Invoicepage> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      appBar: AppBar(
        backgroundColor: Color(0xFF6D2298),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              //Navigator.pushNamed(context, MyRoutes.homeroute);
              Navigator.pop(context);
            },
            child: Icon(
              Icons.close,
              size: 35,
            ),
          ),
          SizedBox(width: 15,),
        ],
        title: Row(
          children: [
            Expanded(child: Container(child: Center(child: Padding(padding: EdgeInsets.only(left: 30),child: Text("INVOICE NO. oooo"))))),
          ],
        ),
      ),
      body: SafeArea  (
        child: SlidingSheet(
          elevation: 8,
          cornerRadius: 16,
          snapSpec: const SnapSpec(
            snap: true,
            snappings: [75, 400, double.infinity],//Changed the first ine from 120 to 75.
            positioning: SnapPositioning.pixelOffset,
          ),
          body: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child:Column(
                children: [
                  SizedBox(height: 15,),
                  Padding(
                    padding: EdgeInsets.only(right: 10,left: 10),
                    child: Table(
                      columnWidths: { 0: FlexColumnWidth(2),},
                      children: [
                        TableRow(
                          children: [
                            Center(child: Text("Item")),
                            Center(child: Text("Qnty")),
                            Center(child: Text("Rate")),
                            Center(child: Text("Dis.%")),
                            Center(child: Text("Total")),
                            Center(child: Text("Action")),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Row(children: [Itemrow(),],),
                  SizedBox(height: 15,),
                  Row(children: [Itemrow(),],),
                  SizedBox(height: 15,),
                  Row(children: [Itemrow(),],),
                ],
              ),
            ),
          ),
          builder: (context, state) {
            return Container(
              height: 0,
              child: Center(
                child: Text(""),
              ),
            );
          },
          //Header of primary slidesheet
          headerBuilder: (context, state) {
            return SingleChildScrollView(
              child: Container(
                  height: 75,
                  width: double.infinity,
                  color: Colors.white,
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
                        SizedBox(height:5,),
                        Builder(
                          builder: (context)=>SizedBox(
                            width: 100,
                            height: 8,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.grey,
                                elevation: 0,
                              ),
                              onPressed: showSheet,
                              child: Container(),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10,left: 10),
                          child: Row(
                            children: [
                              Expanded(child: Container(alignment:Alignment.centerLeft,child: Text("Net Total:1500"))),
                              Expanded(child: Container(alignment:Alignment.centerRight,child: Text("Due : 1500"))),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10,left: 10),
                          child: Row(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Text("Paid Amount: "),
                                    Container(
                                      width: 70,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                          color: Colors.grey,
                                          width: 2.0,
                                        ),
                                      ),
                                      child: TextFormField(
                                        textAlign: TextAlign.center,
                                        decoration: InputDecoration(
                                          hintText: '',
                                          filled: true,
                                          fillColor: Colors.grey,
                                          border: InputBorder.none,//To Remove underline below text.

                                          hintStyle: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  onTap: (){
                                    Navigator.pushNamed(context, MyRoutes.homeroute);
                                  },
                                  child: Container(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                      width: 70,
                                      height: 25,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color: Color(0xFF05A155),
                                      ),
                                      child: AppText(text: 'SAVE SALE',color: Colors.white,bold: true,size: 11,),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 1,),
                      ],
                    ),
                  )
              ),
            );
          },
        ),
      ),
    );
  }
  //Making secondary slidesheet secondary
  Future showSheet() => showSlidingBottomSheet(context, builder: (context) => SlidingSheetDialog(
          cornerRadius: 16,
              snapSpec: SnapSpec(
                initialSnap: 0.7,
                snappings: [
                  0.10,0.11,0.12,0.13,0.14,0.15,0.16,0.17,0.18,0.19,
                  0.20,0.21,0.22,0.23,0.24,0.25,0.26,0.27,0.28,0.29,
                  0.30,0.31,0.32,0.33,0.34,0.35,0.36,0.37,0.38,0.39,
                  0.40,0.41,0.42,0.43,0.44,0.45,0.46,0.47,0.48,0.49,
                  0.50,0.51,0.52,0.53,0.54,0.55,0.56,0.57,0.58,0.59,
                  0.60,0.61,0.62,0.63,0.64,0.65,0.66,0.67,0.68,0.69,
                  0.70,
                ],
                //Decide at what hieight u can stop
              ),
              builder: buildSheet,
          headerBuilder: buildHeader,
            ),);
//Main body of slide view
  Widget buildSheet(context, state) => Material(
        child: Container(
          color: Colors.white,
          child: ListView(
              //List view wont work so put the below 2 lines
              shrinkWrap: true,
              primary: false,
              padding: EdgeInsets.only(top: 10,bottom: 10),
              children: [
                SizedBox(height: 15,),
                secondaryscrollview_row(text: "Sale Account"),
                SizedBox(height: 8,),
                secondaryscrollview_row(text: "Total Discount"),
                SizedBox(height: 8,),
                secondaryscrollview_row(text: "Total Tax"),
                SizedBox(height: 8,),
                secondaryscrollview_row(text: "Shipping Cost"),
                SizedBox(height: 8,),
                secondaryscrollview_row(text: "Grand Total"),
                SizedBox(height: 8,),
                secondaryscrollview_row(text: "Previous"),
                SizedBox(height: 8,),
                secondaryscrollview_row(text: "Change"),
                SizedBox(height: 35,),
                Padding(
                  padding: EdgeInsets.only(right:30,left: 30),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
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
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          child: SizedBox(
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
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 35,),
              ],
            ),
        ),

      );

//header of slide view secondary
  Widget buildHeader(BuildContext context, SheetState state) => Material(
    child: SingleChildScrollView(
      child: Container(
          height: 75,
          width: double.infinity,
          color: Colors.white,
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
                SizedBox(height:5,),
                Builder(
                  builder: (context)=>SizedBox(
                    width: 100,
                    height: 8,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey,
                        elevation: 0,
                      ),
                      onPressed: ()async{
                        Navigator.of(context).pop();
                      },
                      child: Container(),
                    ),
                  ),
                ),
                /*Builder(
                  builder: (context)=>InkWell(
                    onTap: ()async{
                      setState((){
                        Navigator.of(context).pop();
                        // SheetController.of(context)!.expand();
                        //  Navigator.of(context).pop();
                        //Navigator.of(context).pop(),
                        //TO close use above code
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
                ),*/ // the one i made
                Padding(
                  padding: EdgeInsets.only(right: 10,left: 10),
                  child: Row(
                    children: [
                      Expanded(child: Container(alignment:Alignment.centerLeft,child: Text("Net Total:1500"))),
                      Expanded(child: Container(alignment:Alignment.centerRight,child: Text("Due : 1500"))),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10,left: 10),
                  child: Row(
                    children: [
                      Text("Paid Amount: "),
                      Container(
                        width: 70,
                        height: 25,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Color(0xFFE6E6E6),
                            width: 2.0,
                          ),
                        ),
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            hintText: '',
                            filled: true,
                            fillColor: Color(0xFFE6E6E6),
                            border: InputBorder.none,//To Remove underline below text.

                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 1,),
              ],
            ),
          )
      ),
    ),
  );

  }

class secondaryscrollview_row extends StatelessWidget {
  secondaryscrollview_row({
    Key? key,
    this.text="",
  }) : super(key: key);
  String text;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 90,left: 90),
        child: Row(
          children: [
            Expanded(child: Text(text)),
            Expanded(
              child: Container(
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Color(0xFFE6E6E6),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Itemrow extends StatelessWidget {
  Itemrow({
    Key? key,
    this.itemname="Item Name",
    this.qnty=100,
    this.rate=500,
    this.total=45000,
    this.discount=10,
  }) : super(key: key);
  String itemname;
  double qnty;
  double rate;
  double discount;
  double total;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 10,right: 10),
        child: Row(
          children: [
            Expanded(
              flex: 6,
              child: Container(
                width: 335,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black),
                ),
                child:Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        height:30,
                        width: 110,
                        decoration: BoxDecoration(
                          border: Border(
                            right: BorderSide(width: 1,color: Colors.black,),
                          ),
                        ),
                        child: Center(child: Text(itemname)),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height:30,
                        width: 60,
                        decoration: BoxDecoration(
                          border: Border(
                            right: BorderSide(width: 1,color: Colors.black,),
                          ),
                        ),
                        child: Center(child: Text("$qnty")),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height:30,
                        width: 55,
                        decoration: BoxDecoration(
                          border: Border(
                            right: BorderSide(width: 1,color: Colors.black,),
                          ),
                        ),
                        child: Center(child: Text("$rate")),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height:30,
                        width: 55,
                        decoration: BoxDecoration(
                          border: Border(
                            right: BorderSide(width: 1,color: Colors.black,),
                          ),
                        ),
                        child: Center(child: Text("$discount%")),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Center(
                          child: Text(" $total",style: TextStyle(fontSize: 12),),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(child: Container(alignment:Alignment.center,child: Image.asset("images/bin.png",width: 25,height: 25,))),
                  Expanded(child: Container(alignment:Alignment.center,child: eyepopup())),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}






