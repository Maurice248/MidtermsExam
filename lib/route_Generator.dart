import 'package:Midterms/Screens/DashboardScreen.dart';
import 'package:Midterms/Screens/LoginScreen.dart';
import 'package:Midterms/Screens/RegisterScreen.dart';
import 'package:Midterms/Screens/SettingsScreen.dart';
import 'package:flutter/material.dart';

class RouteGenarator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case '/register':
        return MaterialPageRoute(builder: (_) => RegisterScreen());
      case '/dashboard':
        return MaterialPageRoute(builder: (_) => DashboardScreen());
      case '/settings':
        return MaterialPageRoute(builder: (_) => SettingsScreen());
    }
  }
}
