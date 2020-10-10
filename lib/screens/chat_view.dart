import 'package:flutter/material.dart';
import 'package:responsive_design/widgets/chat_view/chat_list.dart';

class ChatView extends StatelessWidget {
  final Color profileIconColor;
  ChatView(this.profileIconColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ChatList(profileIconColor),
    );
  }
}
