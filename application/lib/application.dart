import 'package:application/screens/crypto_table.dart';
import 'package:flutter/material.dart';
import 'package:application/screens/auth.dart';

class Application extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/application/screens/crypto_table' :(context) => TableScreen(),
        '/application/screens/auth':(context) => AuthScreen(),
      },
      initialRoute: '/application/screens/auth',
    );
  }
}