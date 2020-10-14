import 'package:flutter/material.dart';
import 'package:responsive_design/flow/res/custom_colors.dart';
import 'package:responsive_design/flow/widgets/text_view.dart';

class MenuWidget extends StatefulWidget {
  final int selectedIndex;
  final Function(int selectedIndex) onTapped;

  MenuWidget({@required this.onTapped, this.selectedIndex});

  @override
  _MenuWidgetState createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  int _selectedItem = 0;

  @override
  void initState() {
    super.initState();
    _selectedItem = widget.selectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
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
          InkWell(
              onTap: () {
                setState(() {
                  _selectedItem = 0;
                  widget.onTapped(_selectedItem);
                });
              },
              child: Item(0, 'Chats', _selectedItem, Icons.chat)),
          Container(
            height: 5,
            width: double.maxFinite,
            color: Colors.white60,
          ),
          InkWell(
              onTap: () {
                setState(() {
                  _selectedItem = 1;
                  widget.onTapped(_selectedItem);
                });
              },
              child: Item(1, 'Bookmark', _selectedItem, Icons.bookmark)),
          Container(
            height: 5,
            width: double.maxFinite,
            color: Colors.white60,
          ),
          InkWell(
              onTap: () {
                setState(() {
                  _selectedItem = 2;
                  widget.onTapped(_selectedItem);
                });
              },
              child: Item(2, 'Contacts', _selectedItem, Icons.people)),
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
                Expanded(child: TextViewMedium()),
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
                Expanded(child: TextViewMedium()),
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
                Expanded(child: TextViewMedium()),
              ],
            ),
          ),
          Container(
            height: 2,
            width: double.maxFinite,
            color: Colors.white24,
          ),
        ],
      ),
    );
  }
}

class Item extends StatefulWidget {
  final int id;
  final String title;
  final int selected;
  final IconData icon;

  Item(this.id, this.title, this.selected, this.icon);

  @override
  _ItemState createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: widget.selected == widget.id
            ? Border.all(width: 2.0, color: CustomColors.blue_gray)
            : null,
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, top: 20.0, bottom: 20.0),
        child: Row(
          children: [
            Icon(widget.icon, size: 24, color: CustomColors.neon_green),
            SizedBox(width: 16.0),
            Text(widget.title, style: TextStyle(color: CustomColors.neon_green)),
          ],
        ),
      ),
    );
  }
}
