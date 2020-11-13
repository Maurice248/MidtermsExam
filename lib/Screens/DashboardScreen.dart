import 'package:flutter/material.dart';
import 'package:Midterms/UI/ToAlign.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            "DASHBOARD",
          ),
          actions: [
            IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {
                  Navigator.of(context).pushNamed('/settings');
                })
          ],
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
                        'WELCOME VISITOR!',
                        style: TextStyle(
                            fontSize: 50.0, color: Colors.greenAccent),
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
