import 'package:flutter/material.dart';
import 'package:Midterms/UI/ToAlign.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("SETTINGS"),
          backgroundColor: Colors.greenAccent,
          elevation: 0.0,
        ),
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
                        'Account Settings',
                        style: TextStyle(
                            fontSize: 30.0, color: Colors.greenAccent),
                      ),
                      FlatButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/');
                        },
                        child: Text(
                          'LOGOUT',
                          style: TextStyle(
                              fontSize: 30.0, color: Colors.greenAccent),
                        ),
                      )
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
