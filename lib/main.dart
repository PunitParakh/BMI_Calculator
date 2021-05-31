import 'package:flutter/material.dart';
import 'BmiCalculator.dart';

void main() => runApp(Calculator());

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0XFF0A0E21),
        scaffoldBackgroundColor: Color(0XFF0A0E21),
      ),
      debugShowCheckedModeBanner: false,
      home: Bmi(),
    );
  }
}
