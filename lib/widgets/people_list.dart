import 'package:flutter/material.dart';
import 'package:responsive_design/widgets/people_item.dart';

class PeopleList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: 30,
      itemBuilder: (context, index) {
        return PeopleItem();
      },
    );
  }
}
