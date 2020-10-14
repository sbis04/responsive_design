import 'package:flutter/material.dart';
import 'package:responsive_design/layouts/res/my_colors.dart';

class OrientationBuilderLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Orientation deviceOrientation = MediaQuery.of(context).orientation;

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: MyColors.darkGreen,
              child: OrientationBuilder(
                builder: (context, orientation) => Center(
                  child: Text(
                    'View 1\n\n' +
                        '[MediaQuery orientation]:\n$deviceOrientation\n\n' +
                        '[OrientationBuilder]:\n$orientation',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: OrientationBuilder(
              builder: (context, orientation) => Container(
                color: Colors.white,
                child: Center(
                  child: Text(
                    'View 2\n\n' +
                        '[MediaQuery orientation]:\n$deviceOrientation\n\n' +
                        '[OrientationBuilder]:\n$orientation',
                    style: TextStyle(color: MyColors.darkGreen, fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
