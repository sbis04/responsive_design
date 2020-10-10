import 'package:flutter/material.dart';

class Destination {
  const Destination(this.id, this.title, this.icon);
  final int id;
  final String title;
  final IconData icon;
}

const List<Destination> allDestinations = <Destination>[
  Destination(0, 'Bookmark', Icons.bookmark),
  Destination(1, 'Chats', Icons.chat),
  Destination(2, 'Contacts', Icons.people)
];
