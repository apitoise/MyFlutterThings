import 'package:flutter/material.dart';

class MessengerSearchBar extends StatelessWidget {
  final _searchedContact = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 14,
        padding: EdgeInsets.all(10),
        child: TextField(
            controller: _searchedContact,
            decoration: InputDecoration(
                labelText: 'Search',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100)))));
  }
}
