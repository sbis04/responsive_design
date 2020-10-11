import 'dart:math';

import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';
import 'package:responsive_design/widgets/text_view.dart';

/// The content to the displayed in each PeopleList item
class BookmarkItem extends StatelessWidget {
  final RandomColor _randomColor = RandomColor();
  final _randomHeight = new Random();

  static const int minHeight = 60;
  static const int maxHeight = 250;
  static const double bubbleRoundedRadius = 20;

  int getBubbleHeight() => minHeight + _randomHeight.nextInt(maxHeight - minHeight);

  @override
  Widget build(BuildContext context) {
    Color profileColor = _randomColor.randomColor();
    double width = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0, bottom: 8.0, left: 16.0, right: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: profileColor,
            ),
            SizedBox(width: 16.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextViewSmall(),
                SizedBox(height: 16.0),
                Container(
                  width: width * 0.6,
                  height: getBubbleHeight().toDouble(),
                  decoration: BoxDecoration(
                    color: profileColor.withOpacity(0.3),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(bubbleRoundedRadius),
                      bottomRight: Radius.circular(bubbleRoundedRadius),
                      topRight: Radius.circular(bubbleRoundedRadius),
                    ),
                  ),
                )
              ],
            ),
            Expanded(child: SizedBox()),
            Icon(Icons.bookmark),
          ],
        ),
      ),
    );
  }
}
