import 'package:flutter/material.dart';
import 'package:tinderapp/providers/swipeProvider.dart';
import 'package:tinderapp/views/swipeview.dart';
import 'package:tinderapp/widget/appbarwidget.dart';
import 'package:tinderapp/widget/bottombuttons.dart';
import '../model/user.dart';
import '../data/users.dart';
import 'package:provider/provider.dart';
import '../providers/swipeProvider.dart';

class MainPage extends StatefulWidget {
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<User> usersList = myUsers;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarWidget(context),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                usersList.isEmpty
                    ? Text("No More Users.")
                    : Stack(children: usersList.map(buildUser).toList()),
                Padding(padding: EdgeInsets.all(10)),
                bottomButtons()
              ],
            )));
  }

  Widget buildUser(User user) {
    final userIndex = usersList.indexOf(user);
    final isUserInFocus = userIndex == usersList.length - 1;
    final provider = Provider.of<SwipeProvider>(context, listen: false);

    return Listener(
        onPointerMove: (pointerEvent) {
          provider.updatePosition(pointerEvent.localDelta.dx);
        },
        onPointerCancel: (_) {
          provider.resetPosition();
        },
        onPointerUp: (_) {
          provider.resetPosition();
        },
        child: Draggable(
          child: SwipeView(user: user, isUserInFocus: isUserInFocus),
          feedback: Material(
              type: MaterialType.transparency,
              child: SwipeView(user: user, isUserInFocus: isUserInFocus)),
          childWhenDragging: Container(),
          onDragEnd: (details) => onDragEnd(details, user),
        ));
  }

  void onDragEnd(DraggableDetails details, User user) {
    final minimumDrag = 100;
    if (details.offset.dx > minimumDrag) {
      user.isSwipedOff = true;
    } else if (details.offset.dx < -minimumDrag) {
      user.isLiked = true;
    }
    setState(() => usersList.remove(user));
  }
}
