import 'package:Midterms/UI/CustomInputField.dart';
import 'package:flutter/material.dart';
import 'package:Midterms/UI/ToAlign.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                  height: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        'REGISTER',
                        style: TextStyle(
                            fontSize: 50.0, color: Colors.greenAccent),
                      ),
                      CustomInputField(
                          Icon(Icons.person, color: Colors.black), 'Username'),
                      CustomInputField(Icon(Icons.email, color: Colors.black),
                          'Email Address'),
                      CustomInputField(
                          Icon(Icons.lock, color: Colors.black), 'Password'),
                      CustomInputField(
                          Icon(Icons.lock_open, color: Colors.black),
                          'Confirm Password'),
                      Container(
                        width: 100,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/');
                          },
                          color: Colors.greenAccent,
                          textColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          child: Text(
                            'SIGNUP',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.0),
                          ),
                        ),
                      ),
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
