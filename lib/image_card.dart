import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final String imagePath;
  final String brand;
  final String name;
  final String price;
  ImageCard({required this.imagePath,required this.brand,required this.name,required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 143,
      height: 225,
      decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(
              20)),
      margin: EdgeInsets.only(
        left: 10,
        top: 10
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)
            ),
            child: Image.asset(
              imagePath,
              width: 200,
              height:
                  150,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5),
           child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  brand,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      price,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "/per day",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
           ),
          ),
        ],
      ),
    );
  }
}