import 'package:flutter/material.dart';
import 'package:responsive_design/flow/res/custom_colors.dart';
import 'package:responsive_design/flow/widgets/chat_view/chat_list.dart';
import 'package:responsive_design/flow/widgets/send_widget.dart';

class ChatViewSmall extends StatelessWidget {
  final Color profileIconColor;
  ChatViewSmall(this.profileIconColor);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.blue_gray,
        title: Text(
          'Chats',
          style: TextStyle(
            fontFamily: 'SansitaSwashed',
            fontSize: 28,
            letterSpacing: 1,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(child: ChatList(profileIconColor)),
            SendWidget(),
          ],
        ),
      ),
    );
  }
}
