import 'package:flutter/material.dart';
import 'package:responsive_design/widgets/chat_view/chat_item.dart';

class ChatList extends StatelessWidget {
  final Color profileIconColor;
  ChatList(this.profileIconColor);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      reverse: true,
      physics: BouncingScrollPhysics(),
      itemCount: 30,
      itemBuilder: (context, index) {
        return ChatItem(profileIconColor);
      },
    );
  }
}
