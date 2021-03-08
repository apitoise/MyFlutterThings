import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ConnectedUsersList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey,
        height: MediaQuery.of(context).size.height / 10,
        child: CustomScrollView(
          scrollDirection: Axis.horizontal,
          slivers: [],
        ));
  }
}
