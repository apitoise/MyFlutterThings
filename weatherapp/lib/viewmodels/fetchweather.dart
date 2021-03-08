import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/weather.dart';
import 'dart:async';

class WeatherViewModel {
  Future<Weather> fetchWeather(String city) async {
    final response = await http.get(
        "http://api.openweathermap.org/data/2.5/weather?q=$city,fr&appid=df25d3ca728bce9a0152d2097897a738");
    if (response.statusCode == 200) {
      return Weather.fromJson(json.decode(response.body));
    }
    return throw Exception('Failed to load API.');
  }
}
