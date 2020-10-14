import 'package:flutter/material.dart';
import 'package:responsive_design/layouts/res/my_colors.dart';

class LayoutBuilderLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: LayoutBuilder(
              builder: (context, constraints) => Container(
                color: MyColors.darkGreen,
                child: Center(
                  child: Text(
                    'View 1\n\n' +
                        '[MediaQuery]:\n ${screenSize.width.toStringAsFixed(2)}\n\n' +
                        '[LayoutBuilder]:\n${constraints.maxWidth.toStringAsFixed(2)}',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: LayoutBuilder(
              builder: (context, constraints) => Container(
                color: Colors.white,
                child: Center(
                  child: Text(
                    'View 2\n\n' +
                        '[MediaQuery]:\n ${screenSize.width.toStringAsFixed(2)}\n\n' +
                        '[LayoutBuilder]:\n${constraints.maxWidth.toStringAsFixed(2)}',
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
