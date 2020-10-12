import 'package:flutter/material.dart';
import 'package:responsive_design/screens/home_view_large.dart';
import 'package:responsive_design/screens/home_view_small.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return HomeViewSmall(_currentIndex, (index) {
              setState(() {
                _currentIndex = index;
              });
            });
          } else {
            return HomeViewLarge(_currentIndex, (index) {
              setState(() {
                _currentIndex = index;
              });
            });
          }
        },
      ),
    );
  }
}
