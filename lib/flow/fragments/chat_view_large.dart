import 'package:flutter/material.dart';
import 'package:responsive_design/flow/fragments/people_view.dart';
import 'package:responsive_design/flow/res/custom_colors.dart';
import 'package:responsive_design/flow/widgets/chat_view/chat_list.dart';
import 'package:responsive_design/flow/widgets/send_widget.dart';

class ChatViewLarge extends StatelessWidget {
  final Color profileIconColor;
  ChatViewLarge(this.profileIconColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: double.maxFinite,
                    height: 100,
                    color: CustomColors.blue_gray_dark,
                    child: SafeArea(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: BackButton(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  PeopleView(isNotInChatMode: false),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Expanded(child: ChatList(profileIconColor)),
                  SendWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
