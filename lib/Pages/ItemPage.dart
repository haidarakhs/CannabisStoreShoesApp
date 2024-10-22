import 'package:flutter/material.dart';
import 'package:hrshop/Pages/Widget/ItemAppBar.dart';
// import 'package:clippy_flutter/clippy_flutter.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          
        children: [
         
          ItemAppBar(),
          Padding(
            padding: EdgeInsets.all(16),
            child: Image.asset('images/1.png',),
          ),
          // Arc(
          //   height: 50.0, // Anda perlu menentukan tinggi lengkungan
          //   edge: Edge.BOTTOM, // Tentukan sisi lengkungan (jika diperlukan)
          //   child: Container(
          //     color: Colors.blue, // Atau warna sesuai dengan kebutuhan Anda
          //     height: 100, // Tentukan tinggi container
          //   ),
          // ),
        ],
      ),
    );
  }
}
