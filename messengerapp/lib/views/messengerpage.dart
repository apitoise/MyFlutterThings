import 'package:flutter/material.dart';
import 'package:messengerapp/widgets/connectedUsersList.dart';
import 'package:messengerapp/widgets/customIconsButtons.dart';
import 'package:messengerapp/widgets/messengerSearchBar.dart';
import 'package:messengerapp/widgets/messengerTopBar.dart';

class MessengerPage extends StatefulWidget {
  @override
  _MessengerPageState createState() => _MessengerPageState();
}

class _MessengerPageState extends State<MessengerPage> {
  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.of(context).size.width;
    double sh = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SafeArea(
      child: Container(
          width: sw,
          height: sh,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                MessengerTopBar(),
                MessengerSearchBar(),
                ConnectedUsersList()
              ])),
    ));
  }
}
