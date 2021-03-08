import 'package:flutter/material.dart';

enum SwipingDirection { right, left, none }

class SwipeProvider extends ChangeNotifier {
  double _dx = 0.0;
  SwipingDirection _swipingDirection;

  SwipingDirection get swipingDirection => _swipingDirection;

  SwipeProvider() {
    _swipingDirection = SwipingDirection.none;
  }

  void resetPosition() {
    _dx = 0.0;
    _swipingDirection = SwipingDirection.none;
    notifyListeners();
  }

  void updatePosition(double changeInX) {
    _dx = _dx + changeInX;
    if (_dx > 0) {
      _swipingDirection = SwipingDirection.right;
    } else if (_dx < 0) {
      _swipingDirection = SwipingDirection.left;
    } else {
      _swipingDirection = SwipingDirection.none;
    }
    notifyListeners();
  }
}
