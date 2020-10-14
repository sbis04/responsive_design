import 'package:flutter/material.dart';
import 'package:responsive_design/flow/fragments/destination_view.dart';
import 'package:responsive_design/flow/model/destination.dart';
import 'package:responsive_design/flow/res/custom_colors.dart';
import 'package:responsive_design/flow/widgets/text_view.dart';

class HomeViewSmall extends StatefulWidget {
  final int currentIndex;
  final Function(int selectedIndex) onTapped;
  HomeViewSmall(this.currentIndex, this.onTapped);

  @override
  _HomeViewSmallState createState() => _HomeViewSmallState();
}

class _HomeViewSmallState extends State<HomeViewSmall> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.currentIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.blue_gray,
        title: Text(
          'Flow',
          style: TextStyle(
            fontFamily: 'SansitaSwashed',
            fontSize: 28,
            letterSpacing: 1,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              icon: CircleAvatar(
                radius: 16,
                backgroundColor: CustomColors.neon_green,
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: CustomColors.blue_gray,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.maxFinite,
                height: 150,
                color: CustomColors.blue_gray_dark,
                child: Center(
                  child: Text(
                    'Flow',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'SansitaSwashed',
                      fontSize: 32,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
              Container(
                height: 5,
                width: double.maxFinite,
                color: Colors.white60,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 20.0, bottom: 20.0),
                child: Row(
                  children: [
                    Icon(Icons.notifications, size: 24, color: CustomColors.neon_green),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 16.0),
                        child: TextViewMedium(),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 2,
                width: double.maxFinite,
                color: Colors.white24,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 20.0, bottom: 20.0),
                child: Row(
                  children: [
                    Icon(Icons.settings, size: 24, color: CustomColors.neon_green),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 16.0),
                        child: TextViewMedium(),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 2,
                width: double.maxFinite,
                color: Colors.white24,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 20.0, bottom: 20.0),
                child: Row(
                  children: [
                    Icon(Icons.info, size: 24, color: CustomColors.neon_green),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 16.0),
                        child: TextViewMedium(),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 2,
                width: double.maxFinite,
                color: Colors.white24,
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Copyright © 2020 | Flow',
                      style: TextStyle(
                        color: Colors.white60,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: CustomColors.blue_gray,
        selectedIconTheme: IconThemeData(size: 30),
        unselectedIconTheme: IconThemeData(size: 20),
        selectedItemColor: CustomColors.neon_green,
        unselectedItemColor: Colors.white60,
        showUnselectedLabels: false,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
            widget.onTapped(_currentIndex);
          });
        },
        items: allDestinations.map((Destination destination) {
          return BottomNavigationBarItem(
            icon: Icon(destination.icon),
            label: destination.title,
          );
        }).toList(),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: allDestinations.map<Widget>((Destination destination) {
          return DestinationView(destination);
        }).toList(),
      ),
      // PeopleView(),
    );
  }
}
