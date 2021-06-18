// this is start page of the program ,not the start page of app
//this page runs to a widget bottomnavigation in folder component
//page-1
import 'package:avaride2/componets/BottomNavigation.dart';
import 'package:flutter/material.dart';

void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        primaryColor: Colors.black,
      ) ,
      home:BottomNavigation(),
    );

  }
}


