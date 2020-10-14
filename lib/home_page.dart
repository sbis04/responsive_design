import 'package:flutter/material.dart';
import 'package:responsive_design/flow/screens/flow_home_page.dart';
import 'package:responsive_design/layouts/aspect_ratio_layout.dart';
import 'package:responsive_design/layouts/expanded_flexible_layout.dart';
import 'package:responsive_design/layouts/fractionally_sized_box_layout.dart';
import 'package:responsive_design/layouts/layout_builder_layout.dart';
import 'package:responsive_design/layouts/media_query_layout.dart';
import 'package:responsive_design/layouts/orientation_builder_layout.dart';
import 'package:responsive_design/layouts/res/my_colors.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              LabelWidget('Flow', FlowHomePage()),
              LabelWidget('MediaQeuryLayout', MediaQueryLayout()),
              LabelWidget('LayoutBuilderLayout', LayoutBuilderLayout()),
              LabelWidget('OrientationBuilderLayout', OrientationBuilderLayout()),
              LabelWidget('ExpandedFlexibleLayout', ExpandedFlexibleLayout()),
              LabelWidget('FractionallySizedBoxLayout', FractionallySizedBoxLayout()),
              LabelWidget('AspectRatioLayout', AspectRatioLayout()),
            ],
          ),
        ),
      ),
    );
  }
}

class LabelWidget extends StatelessWidget {
  final String label;
  final Widget widget;

  LabelWidget(this.label, this.widget);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: RaisedButton(
            color: MyColors.darkGreen,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => widget,
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                label,
                style: TextStyle(
                  color: MyColors.greenAccent,
                  fontSize: 20,
                  fontFamily: 'GoogleSans',
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
