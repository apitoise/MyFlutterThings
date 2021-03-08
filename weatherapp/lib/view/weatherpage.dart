import 'package:flutter/material.dart';
import '../viewmodels/fetchweather.dart';
import '../models/weather.dart';

class WeatherPage extends StatefulWidget {
  WeatherPage({key, this.city}) : super(key: key);
  final String city;
  @override
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  final WeatherViewModel weatherViewModel = WeatherViewModel();
  Future<Weather> fetchWeather;

  void initState() {
    fetchWeather = weatherViewModel.fetchWeather(widget.city);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.blue, title: Text(widget.city)),
        body: FutureBuilder<Weather>(
            future: fetchWeather,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasData) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              repeat: ImageRepeat.repeat,
                              image: AssetImage(
                                  'asset/image/${snapshot.data.icon}.jpeg'))),
                      child: SafeArea(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 10),
                            SizedBox(
                                height: 100,
                                width: 100,
                                child: Image.asset(
                                    'asset/image/bis_${snapshot.data.icon}.jpeg')),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 30),
                            Text('${snapshot.data.temp.toString()}°C',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 50)),
                          ])));
                }
              }
              return Center(child: CircularProgressIndicator());
            }));
  }
}
