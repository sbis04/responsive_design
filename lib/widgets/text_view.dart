import 'package:flutter/material.dart';

/// Generates a placeholder for a Text of small size
class TextViewSmall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      alignment: Alignment.centerLeft,
      widthFactor: 0.4,
      child: TextView(),
    );
  }
}

/// Generates a placeholder for a Text of medium size
class TextViewMedium extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      alignment: Alignment.centerLeft,
      widthFactor: 0.8,
      child: TextView(),
    );
  }
}

/// Generates a placeholder for a Text of large size
class TextViewLarge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      alignment: Alignment.centerLeft,
      widthFactor: 1.0,
      child: TextView(),
    );
  }
}

/// Generates a placeholder for a Text
class TextView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
