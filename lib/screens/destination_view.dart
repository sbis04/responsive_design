import 'package:flutter/material.dart';
import 'package:responsive_design/model/destination.dart';
import 'package:responsive_design/screens/contact_view.dart';
import 'package:responsive_design/screens/people_view.dart';

class DestinationView extends StatelessWidget {
  final Destination destination;

  DestinationView(this.destination);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        child: destination.id == 0
            ? Container()
            : destination.id == 1
                ? PeopleView()
                : ContactView(),
      ),
    );
  }
}
