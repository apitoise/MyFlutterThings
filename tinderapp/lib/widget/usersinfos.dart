import 'package:flutter/material.dart';
import 'package:tinderapp/model/user.dart';

Widget buildUserInfo({@required User user}) => Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '${user.name}, ${user.age}',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 8),
          Text(
            user.job,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
