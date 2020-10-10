import 'package:flutter/material.dart';
import 'package:responsive_design/model/destination.dart';
import 'package:responsive_design/res/custom_colors.dart';
import 'package:responsive_design/screens/people_view.dart';

import 'destination_view.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.blue_gray,
        title: Text(
          'Flow',
          style: TextStyle(
            fontFamily: 'SansitaSwashed',
            fontSize: 28,
            letterSpacing: 1,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: CustomColors.blue_gray,
        selectedIconTheme: IconThemeData(size: 30),
        unselectedIconTheme: IconThemeData(size: 20),
        selectedItemColor: CustomColors.neon_green,
        unselectedItemColor: Colors.white60,
        showUnselectedLabels: false,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: allDestinations.map((Destination destination) {
          return BottomNavigationBarItem(
            icon: Icon(destination.icon),
            label: destination.title,
          );
        }).toList(),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: allDestinations.map<Widget>((Destination destination) {
          return DestinationView(destination);
        }).toList(),
      ),
      // PeopleView(),
    );
  }
}
