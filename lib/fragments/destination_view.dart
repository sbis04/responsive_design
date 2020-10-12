import 'package:flutter/material.dart';
import 'package:responsive_design/model/destination.dart';
import 'package:responsive_design/fragments/bookmark_view.dart';
import 'package:responsive_design/fragments/contact_view.dart';
import 'package:responsive_design/fragments/people_view.dart';

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
            ? PeopleView()
            : destination.id == 1
                ? BookmarkView()
                : ContactView(),
      ),
    );
  }
}
