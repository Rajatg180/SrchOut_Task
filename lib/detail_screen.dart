import 'package:car_rent_ui/Item_tile.dart';
import 'package:car_rent_ui/category_items.dart';
import 'package:car_rent_ui/image_card.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    DetailTab(),
    MapTab(),
    WalletTab(),
    SettingsTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.location_on,
                color: Colors.black,
              ),
              label: "Location"),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.credit_card,
              color: Colors.black,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.black,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}

class DetailTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(0),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.black, Colors.grey],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        shape: BoxShape.circle),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  width: MediaQuery.of(context).size.width * 0.75,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Bike Details',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.35,
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Indian",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "Scout Bobber",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height:MediaQuery.of(context).size.height*0.035,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.38,
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Category",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "Cruiser",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height*0.035,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.38,
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Displacement",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "1133cc",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.04),
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.48,
                      height: MediaQuery.of(context).size.height * 0.35,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 218, 218, 218),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    Positioned(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.48,
                        height: MediaQuery.of(context).size.height * 0.45,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/image3.png'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.40,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Max. Speed",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "124km/h",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/checkout');
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.48,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black),
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Rent",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "1499/per day",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Container(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Text(
                      "Add",
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      " items",
                      style: TextStyle(
                        fontSize: 21,
                      ),
                    ),
                  ],
                ),
              )),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.30,
              child: ListView(
                padding: EdgeInsets.only(top: 10),
                children: [
                  ItemTile(
                    imagePath: 'assets/jacket.png',
                    desc: "Riding Jacket",
                    availability: true,
                    add: true,
                  ),
                  ItemTile(
                    imagePath: 'assets/glaves.png',
                    desc: "Riding Gloves",
                    availability: false,
                    add: true,
                  ),
                  ItemTile(
                    imagePath: 'assets/helmet.png',
                    desc: "Helmet",
                    availability: true,
                    add: true,
                  ),
                  ItemTile(
                    imagePath: 'assets/jacket.png',
                    desc: "Riding Jacket",
                    availability: true,
                    add: true,
                  ),
                  ItemTile(
                    imagePath: 'assets/helmet.png',
                    desc: "Riding Jacket",
                    availability: true,
                    add: true,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),);
  }
}

class MapTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Map Tab'),
    );
  }
}

class WalletTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Wallet Tab'),
    );
  }
}

class SettingsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Settings Tab'),
    );
  }
}
