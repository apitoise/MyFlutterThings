import 'package:flutter/material.dart';

class GenderProvider extends ChangeNotifier {
  String _gender;

  String get getGender => _gender;
  set setGender(String gender) {
    _gender = gender;
    print(_gender);
  }
}
