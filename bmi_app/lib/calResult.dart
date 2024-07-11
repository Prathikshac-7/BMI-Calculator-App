import 'dart:math';

import 'package:flutter/material.dart';

class CalculateResult {
  final int height;
  final int weight;
  double _bmi = 0.0;
  String _msg = 'Normal';
  String _description = '';

  CalculateResult(this.height, this.weight);

  String calculateResult() {
    _bmi = weight / pow(height / 100, 2);
    _setDescriptionAndMessage();
    return _bmi.toStringAsFixed(1);
  }

  void _setDescriptionAndMessage() {
    if (_bmi >= 25) {
      _msg = "OverWeight";
      _description = "You have a higher weight than normal. Try to lose your weight through any activity you want.";
    } else if (_bmi > 18.5) {
      _msg = "Normal";
      _description = "You have a normal weight. Keep it up!";
    } else {
      _msg = "UnderWeight";
      _description = "Your weight is less than normal. Please gain some weight.";
    }
  }

  String getMsg() {
    return _msg;
  }

  String getDescription() {
    return _description;
  }
}