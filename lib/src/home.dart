import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:solo_leveling/src/BodyPage.dart';
import 'package:solo_leveling/src/Menupage.dart';
import 'package:solo_leveling/src/login.dart';
import 'package:solo_leveling/utilities/routes.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Color(0xFF6D2298),
      ),
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
        title: Row(
          children: [
            Expanded(
              child: Container(
                width: 250,
                height: 40,
                decoration: BoxDecoration(
                  color: Color(0xFF6D2298),
                  borderRadius: BorderRadius.circular(7.5),
                  border: Border.all(
                    color: Colors.white,
                    width: 2.0,
                  ),
                ),
                child: Padding(
                  //padding only affects from the left by 8.0;
                  padding: const EdgeInsets.only(left: 15,),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      hintText: 'Search',
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 24,),
            Image.asset(
              "images/QR CODE.png",
              width: 35.0,
              height: 35.0,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
      body: BodyPage(),
      /* 1)for bottom navigation bar the title was must so we gave the font size of title 0 to remove the space it took below the picture.
       2) We used theme so that we can change the background color of bottom nav bar.
       */
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
      //Original botton nav bar
    );
  }
}
