class Weather {
  final int temp;
  final String icon;
  final String city;

  Weather({this.temp, this.icon, this.city});
  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      temp: (json['main']['temp'] - 273.15).round(),
      icon: json['weather'][0]['icon'],
      city: json['name'],
    );
  }
}
