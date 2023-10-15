import 'package:flutter/material.dart';
import 'package:payment/view/screen/home.dart';

import 'view/screen/custom_nav_bar.dart';


void main() async {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const CustomButtomNavBar(

      ),
    );
  }
}


