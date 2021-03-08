import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:messengerapp/views/messengerpage.dart';
import 'package:messengerapp/widgets/myButton.dart';

class LoginPage extends StatelessWidget {
  final _emailAddress = TextEditingController();
  final _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.of(context).size.width;
    double sh = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.blue),
            backgroundColor: Colors.white,
            elevation: 0,
            title: Text('Connect with email',
                style: TextStyle(color: Colors.blue, fontSize: 20))),
        body: Container(
            width: sw,
            height: sh,
            color: Colors.white,
            child: SafeArea(
                child: Column(children: [
              Container(
                  width: sw,
                  height: sh / 2.5,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/signinimage.png',
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
                            TextField(
                                controller: _emailAddress,
                                decoration: InputDecoration(
                                    labelText: 'Email',
                                    border: OutlineInputBorder())),
                            TextField(
                                controller: _password,
                                obscureText: true,
                                decoration: InputDecoration(
                                    labelText: 'Password',
                                    border: OutlineInputBorder())),
                            MyButton(
                                buttonColor: Colors.green,
                                image: 'assets/images/lock.png',
                                name: 'Sign In',
                                textColor: Colors.white,
                                myFunction: () => Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            MessengerPage()))),
                            MyButton(
                                buttonColor: Colors.black,
                                image: 'assets/images/signup.png',
                                name: 'Create New Account',
                                textColor: Colors.white,
                                myFunction: null),
                            Center(
                                child: RichText(
                                    text: TextSpan(
                                        text: 'Forgot Password ?',
                                        style: TextStyle(color: Colors.blue),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = null
                                        // ..onTap = () async =>
                                        //     await _auth.sendPasswordResetEmail(
                                        //         email: _emailAddress.text),
                                        ))),
                          ])))
            ]))));
  }
}
