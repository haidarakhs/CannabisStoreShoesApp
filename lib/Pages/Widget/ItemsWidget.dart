import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for (int i = 1; i < 9; i++)
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10), // Menyesuaikan padding
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 226, 221, 221),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Align items to the start
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "-50%",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.shopping_cart_checkout,
                      color: Colors.black,
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'itemPage');
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10), // Menyesuaikan margin
                    child: AspectRatio( // Menggunakan AspectRatio untuk menjaga proporsi gambar
                      aspectRatio: 1,
                      child: Image.asset(
                        "images/$i.png",
                        fit: BoxFit.cover, // Mengisi area dengan proporsi yang benar
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 6),
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Nike Air VaporMax 2023 Flyknit Electric",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 2, // Membatasi jumlah baris untuk menghindari overflow
                      overflow: TextOverflow.ellipsis, // Menambahkan elipsis jika terlalu panjang
                    ),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
