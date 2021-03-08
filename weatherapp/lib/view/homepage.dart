import 'package:flutter/material.dart';
import 'weatherpage.dart';
import 'newcity.dart';

class HomePage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final city = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.width / 10,
                horizontal: MediaQuery.of(context).size.width / 10),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Choisis la ville :",
                  style: TextStyle(color: Colors.white, fontSize: 35),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Form(
                    key: _formKey,
                    child: Column(children: [
                      TextField(
                        controller: city,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            labelStyle: TextStyle(color: Colors.black),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(color: Colors.black)),
                            labelText: "Ville"),
                      ),
                      SizedBox(height: 30),
                      RaisedButton(
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    NewCity(city: city.text)));
                            //                                  WeatherPage(city: city.text)));
                          }
                        },
                        child: Text("VALIDER",
                            style: TextStyle(color: Colors.white)),
                        color: Colors.green,
                      )
                    ]))
              ],
            )));
  }
}
