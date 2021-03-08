import 'package:flutter/material.dart';
import 'package:idk/widgets/cardswidget.dart';
import '../models/weather.dart';
import '../viewmodels/fetchweather.dart';

class CityList extends StatefulWidget {
  CityList({key, this.city, this.citiesNb}) : super(key: key);
  final String city;
  final int citiesNb;
  @override
  _CityListState createState() => _CityListState();
}

class _CityListState extends State<CityList> {
  final WeatherViewModel weatherViewModel = WeatherViewModel();
  Future<Weather> fetchWeather;

  void initState() {
    fetchWeather = weatherViewModel.fetchWeather(widget.city);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        body: FutureBuilder(
            future: fetchWeather,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasData) {
                  return SafeArea(
                      child: Center(
                          child: CustomScrollView(
                    slivers: [
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                            (BuildContext context, int index) {
                          return CardsWidget(snapshot.data.icon,
                              snapshot.data.city, snapshot.data.temp);
                        }, childCount: 1),
                      )
                    ],
                  )));
                }
              }
              return Center(child: CircularProgressIndicator());
            }));
  }
}
