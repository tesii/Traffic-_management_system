import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/route_screen.dart';
import 'screens/TrafficScreen.dart';

void main() {
  runApp(SmartTrafficApp());
}

class SmartTrafficApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Traffic Navigation',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/route': (context) => RouteScreen(),
        '/traffic': (context) => TrafficScreen(),
      },
    );
  }
}
