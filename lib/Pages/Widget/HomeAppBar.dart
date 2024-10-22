import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(
            Icons.sort,
            size: 30,
            color: Color.fromARGB(255, 226, 221, 221),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "HrSpace",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 226, 221, 221),
              ),
            ),
          ),
          Spacer(),
          Badge(
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'cartPage');
              },
              child: Icon(
                Icons.shopping_bag_outlined,
                size: 30,
                color: Color.fromARGB(255, 226, 221, 221),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
