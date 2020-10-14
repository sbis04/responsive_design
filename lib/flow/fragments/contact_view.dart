import 'package:flutter/material.dart';
import 'package:responsive_design/flow/widgets/contact_view/contact_list.dart';

class ContactView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ContactList(),
    );
  }
}
