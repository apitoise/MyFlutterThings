import 'package:flutter/material.dart';
import 'package:tinderapp/providers/swipeProvider.dart';

Widget buildLikeBadge(SwipingDirection swipingDirection) {
  final isSwipingRight = swipingDirection == SwipingDirection.right;
  final color = isSwipingRight ? Colors.green : Colors.pink;
  final angle = isSwipingRight ? -0.5 : 0.5;

  if (swipingDirection == SwipingDirection.none) {
    return Container();
  } else {
    return Positioned(
      top: 20,
      right: isSwipingRight ? null : 20,
      left: isSwipingRight ? 20 : null,
      child: Transform.rotate(
        angle: angle,
        child: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            border: Border.all(color: color, width: 2),
          ),
          child: Text(
            isSwipingRight ? 'LIKE' : 'NOPE',
            style: TextStyle(
              color: color,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
