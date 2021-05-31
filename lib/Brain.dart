import 'dart:math';

import 'package:flutter/cupertino.dart';

class Brain {
  Brain({@required this.height,@required this.weight});

  final int weight;
  final int height;

  double _bmi;

  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 25)
      return 'Overweight';
    else if (_bmi > 18.5)
      return 'Normal';
    else
      return 'UnderWeight';
  }

  String getExplaination() {
    if (_bmi > 25)
      return 'You need to exercise, Your weigth is more then the required one!!';
    else if (_bmi > 18.5)
      return 'Great job!! You have a perfect BMI';
    else
      return 'You need to eat more, Your weight is less then the required one!!';
  }
}
