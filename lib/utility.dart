import 'dart:math';

import 'package:flutter/material.dart';

class BMIUtility {
  static String calculateBmi(int height, int weight) {
    return (weight / pow(height / 100, 2)).toStringAsFixed(1);
  }

  static String categorizeWeight(String bmiValue) {
    double bmi = double.parse(bmiValue);
    if (bmi >= 25) {
      return 'Overweight';
    } else if (bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  static MaterialColor getColorForBmi(String bmiValue) {
    double bmi = double.parse(bmiValue);
    if (bmi >= 25) {
      return Colors.red;
    } else if (bmi >= 18.5) {
      return Colors.green;
    } else {
      return Colors.red;
    }
  }

  static String getFeedback(String bmiValue) {
    double bmi = double.parse(bmiValue);
    if (bmi >= 25) {
      return 'You should not eat more. Try fasting.';
    } else if (bmi >= 18.5) {
      return 'Keep this up.';
    } else {
      return 'You should start eating more!!';
    }
  }
}
