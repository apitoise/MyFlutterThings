import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:messengerapp/widgets/customIconsButtons.dart';

class MessengerTopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.of(context).size.width;
    double sh = MediaQuery.of(context).size.height;
    return Container(
        child: Row(children: [
      Container(
          margin: EdgeInsets.all(20),
          width: sw / 7,
          height: sh / 20,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage('assets/images/moi.jpg'),
                  fit: BoxFit.contain))),
      Text('Chats',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold)),
      SizedBox(width: 150),
      CustomIconButton(
          myColor: Colors.black,
          icon: Icons.photo_camera,
          mySize: 25,
          action: null),
      Padding(padding: EdgeInsets.all(10)),
      CustomIconButton(
          myColor: Colors.black, icon: Icons.create, mySize: 25, action: null)
    ]));
  }
}
