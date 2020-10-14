import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';
import 'package:responsive_design/flow/res/custom_colors.dart';
import 'package:responsive_design/flow/widgets/text_view.dart';

/// The content to the displayed in each ChatList item
class ContactItem extends StatelessWidget {
  final RandomColor _randomColor = RandomColor();

  @override
  Widget build(BuildContext context) {
    Color profileColor = _randomColor.randomColor();

    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 16.0, right: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: profileColor,
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: TextViewMedium(),
            )),
            RaisedButton(
              color: CustomColors.neon_green,
              onPressed: () {},
              child: Text(
                'invite',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            )
          ],
        ),
      ),
    );
  }
}
