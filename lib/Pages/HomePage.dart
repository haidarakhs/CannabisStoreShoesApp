import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hrshop/Pages/Widget/CategoriesWidget.dart';
import 'package:hrshop/Pages/Widget/HomeAppBar.dart';

import 'Widget/ItemsWidget.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(),
          Container(
            // height: 500,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 226, 221, 221),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Search Here...",
                      border: InputBorder.none,
                      icon: Icon(Icons.search, color: Colors.grey),
                    ),
                  ),
                ),
                Container(
                 alignment: Alignment.centerLeft,
             margin: EdgeInsets.symmetric(
              vertical: 20, 
              horizontal: 10),
              child: Text("Categories", 
              style: TextStyle(
                fontSize: 30 ,
                fontWeight: FontWeight.bold,
                 color: Colors.white,
                 
                )
             ),
          ),
          // Categories
          CategoriesWidget(),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Text("Best Seller",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              ),
               ),
                  ItemsWidget(),
                  
              ],
            ),
          ),
          
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.black,
        onTap: (index){},
        height: 70,
        color: Colors.black,
         items: [
          Icon(
            Icons.home, 
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.card_travel,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.list,
            size: 30,
            color: Colors.white,
          ),
          ],
      ),
    );
  }
}
