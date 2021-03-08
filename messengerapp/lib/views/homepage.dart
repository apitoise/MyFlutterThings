import 'package:flutter/material.dart';
import 'package:messengerapp/views/loginpage.dart';
import 'package:messengerapp/views/register.dart';
import 'package:messengerapp/widgets/myButton.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _password = TextEditingController();
  final _emailAddress = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.of(context).size.width;
    double sh = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Text('Messenger App',
                style: TextStyle(color: Colors.blue, fontSize: 20))),
        body: Container(
            width: sw,
            height: sh,
            color: Colors.white,
            child: SafeArea(
                child: Column(
              children: [
                Container(
                    width: sw,
                    height: sh / 2.5,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/signinlogo.png',
                        ),
                        fit: BoxFit.contain,
                      ),
                    )),
                Expanded(
                    child: Container(
                        width: sw / 1.3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            MyButton(
                              buttonColor: Colors.black,
                              name: 'Connect with email',
                              image: 'assets/images/maillogo.png',
                              textColor: Colors.white,
                              myFunction: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage())),
                            ),
                            MyButton(
                                buttonColor: Colors.blue[800],
                                image: 'assets/images/facebooklogo.png',
                                name: '       Connect with Facebook',
                                textColor: Colors.white,
                                myFunction: null),
                            MyButton(
                                buttonColor: Colors.red,
                                name: 'Connect with Google',
                                image: 'assets/images/gpluslogo.png',
                                textColor: Colors.white,
                                myFunction: null),
                            MyButton(
                                buttonColor: Colors.blue,
                                image: 'assets/images/twitterlogo.png',
                                name: 'Connect with Twitter',
                                textColor: Colors.white,
                                myFunction: null),
                            MyButton(
                              buttonColor: Colors.black,
                              image: 'assets/images/signup.png',
                              name: 'New Account',
                              textColor: Colors.white,
                              myFunction: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => Register())),
                            )
                          ],
                        )))
              ],
            ))));
  }
}
