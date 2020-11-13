import 'package:Midterms/UI/CustomInputField.dart';
import 'package:flutter/material.dart';
import 'package:Midterms/UI/ToAlign.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.teal[900],
          child: Stack(
            children: <Widget>[
              ToAlign(Alignment.bottomRight, 0.5, 0.5, 400, 400),
              ToAlign(Alignment.bottomLeft, 0.4, 0.4, 400, 400),
              Center(
                child: Container(
                  width: 400,
                  height: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        'LOGIN',
                        style: TextStyle(
                            fontSize: 50.0, color: Colors.greenAccent),
                      ),
                      CustomInputField(Icon(Icons.email, color: Colors.black),
                          'Email Address'),
                      CustomInputField(
                          Icon(Icons.lock, color: Colors.black), 'Password'),
                      Container(
                        width: 100,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/dashboard');
                          },
                          color: Colors.greenAccent,
                          textColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.0),
                          ),
                        ),
                      ),
                      FlatButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/register');
                          },
                          child: Text('New User? Register.')),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
