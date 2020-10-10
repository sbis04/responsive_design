import 'package:flutter/material.dart';
import 'package:responsive_design/widgets/chat_list.dart';

class ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ChatList(),
    );
  }
}
