import 'package:flutter/material.dart';
import 'package:idk/view/weatherpage.dart';
import 'citylist.dart';

class NewCity extends StatefulWidget {
  NewCity({key, this.city}) : super(key: key);
  final String city;
  @override
  _NewCityState createState() => _NewCityState();
}

class _NewCityState extends State<NewCity> {
  PageController _controller;

  void initState() {
    super.initState();
    _controller =
        PageController(initialPage: 1, keepPage: false, viewportFraction: 1.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      controller: _controller,
      scrollDirection: Axis.horizontal,
      children: [
        CityList(city: widget.city),
        WeatherPage(city: widget.city),
      ],
    ));
  }
}
