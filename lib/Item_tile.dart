import 'package:flutter/material.dart';

class ItemTile extends StatelessWidget {
  final String imagePath;
  final String desc;
  final bool availability;
  final bool add;

  ItemTile(
      {required this.imagePath,
      required this.desc,
      required this.availability,
      required this.add});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      width: MediaQuery.of(context).size.width * 10,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        leading: Image.asset(
          imagePath,
          width: 50,
          height: 50,
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              desc,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Text(
                  "2000",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "/per day",
                ),
              ],
            ),
          ],
        ),
        trailing: add
            ? Container(
                width: 50,
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: availability ? Colors.black : Colors.grey,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text(
                  availability ? '1' : 'Add',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            : Container(
                width: 80,
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: availability ? Colors.black : Colors.grey,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text(
                  availability ? 'Available' : 'Booked',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
      ),
    );
  }
}
