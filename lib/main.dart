import 'package:flutter/material.dart';
import 'package:responsive_design/screens/home_page.dart';

void main() {
  runApp(Flow());
}

class Flow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flow: Responsive Design',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
