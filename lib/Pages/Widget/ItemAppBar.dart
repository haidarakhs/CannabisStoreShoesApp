import 'package:flutter/material.dart';

class ItemAppBar extends StatelessWidget {
  const ItemAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
             size: 40,
             color: Colors.white,
            ),
          ),
           Padding(padding: EdgeInsets.only(left: 20),
             child: Text('Product',
             style: TextStyle(
              fontSize: 26,
              color: Colors.white,
              fontWeight: FontWeight.w600
             ),
             ),
             ),
             Spacer(),
             Icon(
             Icons.favorite,
             size: 30,
             color: Colors.white,
             )
        ],
      ),
    );
  }
}
