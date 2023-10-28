import 'package:flutter/material.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({super.key});

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    CheckOutTab(),
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

class CheckOutTab extends StatelessWidget {
  const CheckOutTab({super.key});

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
                    'Check Out',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 208, 208, 208)),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 221, 221, 221),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Start Date",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              "09-06-2021",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            )
                          ],
                        ),
                        Icon(
                          Icons.calendar_today,
                          size: 30,
                          color: Colors.black,
                        ),
                      ]),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 221, 221, 221),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "End Date",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              "12-06-2021",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            )
                          ],
                        ),
                        Icon(
                          Icons.calendar_today,
                          size: 30,
                          color: Colors.black, 
                        ),
                      ]),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Apply coupon',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Text(
                        "Details",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 10,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 225, 224, 224)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 5,
                    bottom: 5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Days",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "4",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 5,
                    bottom: 5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Rent",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "₹ 5996",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 5,
                    bottom: 5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Additional items",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "₹ 6400",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 5,
                    bottom: 5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Coupon Discount",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "₹ 396",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 10,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 225, 224, 224)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 5,
                    bottom: 5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Toal Amount",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "₹ 12000",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: Text(
                "PAY",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
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
