import 'package:flutter/material.dart';
import 'package:body_mass_app/screens/input_page.dart';
import 'package:body_mass_app/screens/startPage.dart';

void main() {
  runApp(BMI());
}

class BMI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => StartPage(),
        '/first': (context) => InputPage(),
      },
    );
  }
}
