import 'package:Midterms/route_Generator.dart';
import 'package:flutter/material.dart';
import './Screens/LoginScreen.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    onGenerateRoute: RouteGenarator.generateRoute,
  ));
}
