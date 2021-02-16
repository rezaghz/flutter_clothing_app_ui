import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:badges/badges.dart';
import 'package:my_clothes_app/product_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Clothes App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "poppins",
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(top: 13.0),
          child: Row(
            children: [
              Container(
                width: 35.0,
                height: 35.0,
                child: Center(child: Text("K")),
                decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15.0),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(246, 246, 246, 1),
                      //color : Colors.red,
                      borderRadius: BorderRadius.circular(15.0)),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search ...",
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
              Icon(
                Icons.menu,
                color: Colors.black,
                size: 30.0,
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
            child: Text(
              "Our Product",
              style: TextStyle(fontSize: 25.0),
            ),
          ),
          Container(
            height: 30.0,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15.0),
                  width: 100,
                  height: 10,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(18.0)),
                  child: Center(
                      child: Text(
                    "Popular",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15.0),
                  width: 100,
                  height: 10,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(18.0)),
                  child: Center(
                      child: Text(
                    "Mens",
                    style: TextStyle(color: Colors.black),
                  )),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15.0),
                  width: 100,
                  height: 10,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(18.0)),
                  child: Center(
                      child: Text(
                    "Womens",
                    style: TextStyle(color: Colors.black),
                  )),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15.0),
                  width: 100,
                  height: 10,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(18.0)),
                  child: Center(
                      child: Text(
                    "Mens",
                    style: TextStyle(color: Colors.black),
                  )),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15.0),
                  width: 100,
                  height: 10,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(18.0)),
                  child: Center(
                      child: Text(
                    "Womens",
                    style: TextStyle(color: Colors.black),
                  )),
                ),
              ],
            ),
          ),
          GridView.count(
            padding: EdgeInsets.only(top: 15.0),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            childAspectRatio: 0.7,
            crossAxisSpacing: 1,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ProductPage();
                        }));
                      },
                      child: Container(
                          height: 160.0,
                          width: 140.0,
                          child: Image.asset(
                            "assets/images/2.jpg",
                            height: 100,
                            fit: BoxFit.cover,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        "Swearter TURU",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3.0),
                      child: Text(
                        "\$ 52.22",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        height: 160.0,
                        width: 140.0,
                        child: Image.asset(
                          "assets/images/3.jpg",
                          height: 100,
                          fit: BoxFit.cover,
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        "Swearter TURU",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3.0),
                      child: Text(
                        "\$ 52.22",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        height: 160.0,
                        width: 140.0,
                        child: Image.asset(
                          "assets/images/2.jpg",
                          height: 100,
                          fit: BoxFit.cover,
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        "Swearter TURU",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3.0),
                      child: Text(
                        "\$ 52.22",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        height: 160.0,
                        width: 140.0,
                        child: Image.asset(
                          "assets/images/3.jpg",
                          height: 100,
                          fit: BoxFit.cover,
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        "Swearter TURU",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3.0),
                      child: Text(
                        "\$ 52.22",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Container(
          child: Badge(
              badgeContent: Text(
                '3',
                style: TextStyle(color: Colors.white),
              ),
              //alignment: Alignment.topRight,
              position: BadgePosition.topStart(start: 25, top: -20),
              borderSide: BorderSide(color: Colors.white),
              padding: EdgeInsets.all(7.0),
              child: Icon(Icons.shopping_cart_outlined)),
        ),
        backgroundColor: Colors.black,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        activeColor: Colors.black,
        inactiveColor: Colors.grey,
        icons: [
          Icons.home,
          Icons.explore,
          Icons.notifications_active,
          Icons.account_circle_outlined
        ],
        activeIndex: 0,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.smoothEdge,
        onTap: (index) => {},
        //other params
      ),
    );
  }
}
