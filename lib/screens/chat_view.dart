import 'package:flutter/material.dart';
import 'package:responsive_design/screens/chat_view_large.dart';
import 'package:responsive_design/screens/chat_view_small.dart';

class ChatView extends StatelessWidget {
  final Color profileIconColor;
  ChatView(this.profileIconColor);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) => LayoutBuilder(
          builder: (context, constraints) {
            double breakpointWidth = orientation == Orientation.portrait ? 600 : 800;

            if (constraints.maxWidth < breakpointWidth) {
              return ChatViewSmall(profileIconColor);
            } else {
              return ChatViewLarge(profileIconColor);
            }
          },
        ),
      ),
    );
  }
}
