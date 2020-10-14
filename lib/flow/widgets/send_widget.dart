import 'package:flutter/material.dart';
import 'package:responsive_design/flow/res/custom_colors.dart';

class SendWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.blue_gray,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            IconButton(
              icon: Icon(
                Icons.emoji_emotions,
                color: CustomColors.neon_green,
              ),
              onPressed: null,
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  contentPadding: EdgeInsets.fromLTRB(16.0, 0.0, 10.0, 0.0),
                  filled: true,
                  hintStyle: TextStyle(color: CustomColors.blue_gray),
                  hintText: "Enter your message",
                  fillColor: Colors.white70,
                ),
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.send,
                color: CustomColors.neon_green,
              ),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
