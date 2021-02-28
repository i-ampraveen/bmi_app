import 'dart:math';
import 'package:flutter/cupertino.dart';

import 'components/TextStyle_Decorations.dart';

class BMILogic{

  final int height;
  final int weight;
  double _bmi;

  BMILogic({this.height, this.weight});

  String calculateBMI() {
    _bmi =  weight / pow( height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String displayBMIinText(){
    return (_bmi >= 25) ? "Overweight"
        : (_bmi > 18.5) ? "Normal"
        : "Underweight" ;
  }

  String printResult(){
    if (_bmi >= 25){
      return 'You have a higher than normal body weight. Try to avoid carbs, sugar and exercise more.';
    }else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Maintain the same, Good job!';
    } else {
      return 'You have a lower than normal body weight. Eat a bit more and exercise.';
    }
  }
}

