import 'package:flutter/material.dart';
import 'package:application/screens/auth.dart';

class Application extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/application/screens/auth':(context) => AuthScreen(),
      },
      initialRoute: '/application/screens/auth',
    );
  }
}