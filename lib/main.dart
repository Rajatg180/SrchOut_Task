import 'package:car_rent_ui/check_out.dart';
import 'package:car_rent_ui/detail_screen.dart';
import 'package:car_rent_ui/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       routes: {
        '/detail': (context) => DetailScreen(),
        '/checkout':(context)=>CheckOut(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home:MyHomePage(),
    );
  }
}


