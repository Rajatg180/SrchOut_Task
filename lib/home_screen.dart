import 'package:car_rent_ui/Item_tile.dart';
import 'package:car_rent_ui/category_items.dart';
import 'package:car_rent_ui/image_card.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    HomeTab(),
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

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child : Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.15,
          padding: EdgeInsets.only(left: 30, right: 30, bottom: 15, top: 30),
          child: Row(
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage("assets/Ellipse.png"),
              ),
              SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15.0,
                    ),
                  ),
                  // SizedBox(height: 5.0),
                  Text(
                    "Abhi Tiwari",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Container(
            height: 60,
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: const Color(0xFFEFEEEE),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: const Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                SizedBox(width: 10.0),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search Bike',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(
            bottom: 30,
            top: 30,
          ),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.08,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CategoryItem("Adventure", false),
                CategoryItem("Cruiser", true),
                CategoryItem("SportsBike", false),
                CategoryItem("Tourist", false),
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 10),
          child: Row(
            children: [
              Text(
                "Popular",
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
              )
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.30,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/detail');
                },
                child: ImageCard(
                  imagePath: 'assets/image2.png',
                  brand: "Meteore",
                  name: "Royal Enfiled",
                  price: "699",
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/detail');
                },
                child: ImageCard(
                  imagePath: 'assets/image2.png',
                  brand: "Scout Bobber",
                  name: "Indian",
                  price: "1499",
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/detail');
                },
                child: ImageCard(
                  imagePath: 'assets/image2.png',
                  brand: "Meteore",
                  name: "Royal Enfiled",
                  price: "699",
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          padding: EdgeInsets.only(left: 10),
          child: Row(
            children: [
              Text(
                "Recently",
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                " viewed",
                style: TextStyle(
                  fontSize: 21,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.25,
          child: ListView(
            padding: EdgeInsets.only(top: 10),
            children: <Widget>[
              ItemTile(
                imagePath: 'assets/image1.png',
                desc: "Hayabusa",
                availability: true,
                add: false,
              ),
              ItemTile(
                imagePath: 'assets/image1.png',
                desc: "Classic 350",
                availability: false,
                add: false,
              ),
              ItemTile(
                imagePath: 'assets/image1.png',
                desc: "Hayabusa",
                availability: false,
                add: false,
              ),
            ],
          ),
        ),
      ],
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
