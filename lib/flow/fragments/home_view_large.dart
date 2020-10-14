import 'package:flutter/material.dart';
import 'package:responsive_design/flow/fragments/destination_view.dart';
import 'package:responsive_design/flow/model/destination.dart';
import 'package:responsive_design/flow/widgets/menu_widget.dart';

class HomeViewLarge extends StatefulWidget {
  final int currentIndex;
  final Function(int selectedIndex) onTapped;

  HomeViewLarge(this.currentIndex, this.onTapped);

  @override
  _HomeViewLargeState createState() => _HomeViewLargeState();
}

class _HomeViewLargeState extends State<HomeViewLarge> {
  int _index = 0;

  @override
  void initState() {
    super.initState();
    _index = widget.currentIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: MenuWidget(
              selectedIndex: _index,
              onTapped: (selectedIndex) {
                setState(() {
                  _index = selectedIndex;
                  widget.onTapped(_index);
                });
              },
            ),
          ),
          Expanded(
            flex: 3,
            child: IndexedStack(
              index: _index,
              children: allDestinations.map<Widget>((Destination destination) {
                return DestinationView(destination);
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
