import 'package:flutter/material.dart';

/// Generates a placeholder for a Text of small size
class TextViewSmall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextView(sizeFactor: 0.4);
  }
}

/// Generates a placeholder for a Text of medium size
class TextViewMedium extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextView(sizeFactor: 0.6);
  }
}

/// Generates a placeholder for a Text of large size
class TextViewLarge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextView(sizeFactor: 0.8);
  }
}

/// Generates a placeholder for a Text
class TextView extends StatelessWidget {
  final double sizeFactor;

  TextView({@required this.sizeFactor});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width * sizeFactor,
      height: 16,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
    );
  }
}
