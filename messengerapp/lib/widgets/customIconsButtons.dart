import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final Color myColor;
  final IconData icon;
  final double mySize;
  final action;

  CustomIconButton({
    @required this.myColor,
    @required this.icon,
    @required this.mySize,
    @required this.action,
  });
  Widget build(BuildContext context) {
    return Column(children: [
      GestureDetector(
        child: Container(
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.grey[300]),
          padding: EdgeInsets.all(3),
          child: Icon(
            icon,
            color: myColor,
            size: mySize,
          ),
        ),
        onTap: action,
      ),
    ]);
  }
}
