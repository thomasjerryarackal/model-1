//this widget file is about bottomnavigation widget
//in this widget  wraps the whole application
// so from this page we will have the connection to the screens in the application
//page-2
//from here we will move to different screens

import 'package:avaride2/screens/Explore.dart';
import 'package:avaride2/screens/Profile.dart';
import 'package:avaride2/screens/Scan.dart';
import 'package:avaride2/screens/Visit%20page.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;// this will be set when a new tab is tapped
  // this is the list of screens in the app
  // this list should be in the same order of the b-navigation bar icons are place
  //Because it depends on the index/position number of the b-navigation bar
  final List<Widget> _tabs = [
    //all the are various page in the app
    Explore(),//screen-1
    VisitPage(),//screen-2
    ScanPage(),//screen-3
    ProfilePage(),//screen-4
  ];
  // this is the function of ontap
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // this appBar is fixed so it appear in all pages
      appBar: AppBar(
        title: Text("Name",
          style: TextStyle(
            fontFamily:'Charmonman',
            color: Colors.white70,
          ),
        ),
        centerTitle: true,
      ),
      // in this body we will see reference to each pages
      body: _tabs[_currentIndex],
      // this will not be customise like all other widgets
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.60),
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon:  Icon(Icons.explore_sharp),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon:  Icon(Icons.location_on_outlined),
            label: 'Visit',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner_outlined),
            label: 'Scan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Account',
          )
        ],
      ),
    );
  }
}
