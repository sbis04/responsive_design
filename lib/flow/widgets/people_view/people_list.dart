import 'package:flutter/material.dart';
import 'package:responsive_design/flow/widgets/people_view/people_item.dart';

class PeopleList extends StatelessWidget {
  final bool isNotInChatMode;

  PeopleList({this.isNotInChatMode});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      itemCount: 30,
      itemBuilder: (context, index) {
        return PeopleItem(
          isNotInChatMode: isNotInChatMode,
        );
      },
    );
  }
}
