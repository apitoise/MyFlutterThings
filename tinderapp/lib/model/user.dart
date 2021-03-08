import 'package:flutter/material.dart';

class User {
  final String name;
  final int age;
  final String gender;
  final String job;
  final String image;
  bool isLiked;
  bool isSwipedOff;

  User({
    @required this.name,
    @required this.age,
    @required this.gender,
    @required this.job,
    @required this.image,
    this.isLiked = false,
    this.isSwipedOff = false,
  });
}
