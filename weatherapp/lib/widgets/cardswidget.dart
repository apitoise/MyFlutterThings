import 'package:flutter/material.dart';

class CardsWidget extends StatelessWidget {
  final String icon;
  final String city;
  final int temp;

  CardsWidget(this.icon, this.city, this.temp);
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.blue,
        elevation: 2.0,
        child: Container(
            padding: EdgeInsets.all(20),
            width: double.maxFinite,
            height: 100,
            child: Center(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset('asset/image/bis_$icon.jpeg'),
                    Text(city),
                    Text('${temp.toString()}°C')
                  ]),
            )));
  }
}
