import 'package:flutter/material.dart';
import 'package:hrshop/Pages/CartPage.dart';
import 'package:hrshop/Pages/ItemPage.dart';
import 'package:hrshop/pages/HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
      routes: {
        "/" : (context) => HomePage(),
        "cartPage" : (context) => CartPage(),
         "itemPage" : (context) => ItemPage(),
      },
    );
  }
}
