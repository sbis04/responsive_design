import 'package:flutter/material.dart';
import 'package:responsive_design/screens/home_page.dart';

import 'screens/home_view_small.dart';

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
