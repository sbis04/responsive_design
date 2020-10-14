import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';
import 'package:responsive_design/flow/screens/chat_page.dart';
import 'package:responsive_design/flow/widgets/text_view.dart';

/// The content to the displayed in each PeopleList item
class PeopleItem extends StatelessWidget {
  final RandomColor _randomColor = RandomColor();
  final bool isNotInChatMode;

  PeopleItem({this.isNotInChatMode = true});

  @override
  Widget build(BuildContext context) {
    Color profileColor = _randomColor.randomColor();

    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 16.0, right: 40.0),
        child: InkWell(
          onTap: () {
            isNotInChatMode ??
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ChatPage(profileColor),
                ));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: profileColor,
              ),
              SizedBox(width: 16.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextViewSmall(),
                    SizedBox(height: 8.0),
                    TextViewMedium(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
