import 'package:flutter/material.dart';
import 'package:responsive_design/res/custom_colors.dart';
import 'package:responsive_design/screens/people_view.dart';

class HomePage extends StatelessWidget {
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
      body: PeopleView(),
    );
  }
}
