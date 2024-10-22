import 'package:flutter/material.dart';

class CartAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Color.fromARGB(255, 224, 222, 222),),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        "Your Cart",
        style: TextStyle(
          color: Color.fromARGB(255, 224, 222, 222),
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
    );
  }
}
