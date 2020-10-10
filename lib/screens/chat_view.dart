import 'package:flutter/material.dart';
import 'package:responsive_design/widgets/people_list.dart';

class PeopleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: PeopleList(),
    );
  }
}
