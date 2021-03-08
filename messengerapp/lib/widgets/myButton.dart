import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Color buttonColor;
  final String image;
  final String name;
  final Color textColor;
  final myFunction;

  MyButton(
      {@required this.buttonColor,
      @required this.image,
      @required this.name,
      @required this.textColor,
      @required this.myFunction});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: buttonColor,
                boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 10)]),
            child: Row(children: [
              Container(height: 50, child: Image.asset(image)),
              Container(
                  width: MediaQuery.of(context).size.width / 1.3 - 60,
                  child: Center(
                    child: Text(name,
                        style: TextStyle(color: textColor, fontSize: 20)),
                  ))
            ])),
        onTap: myFunction);
  }
}
