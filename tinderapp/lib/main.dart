import 'package:flutter/material.dart';
import 'package:tinderapp/providers/swipeProvider.dart';
import 'package:tinderapp/views/mainpage.dart';
import 'package:tinderapp/views/swipeview.dart';
import 'package:provider/provider.dart';
import 'views/swipeview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => SwipeProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'TinderLike',
          initialRoute: '/',
          routes: {
            '/': (context) => MainPage(),
            '/swipeview': (context) => SwipeView()
          },
        ));
  }
}
