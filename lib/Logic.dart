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

class resultAnimation extends StatefulWidget {
  @override
  _resultAnimationState createState() => _resultAnimationState();
}

class _resultAnimationState extends State<resultAnimation> {

  bool textAnimation = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AnimatedDefaultTextStyle(
              curve: Curves.easeOutSine,
              child: Text("Congratulations!"),
              style: textAnimation ? ResultScreenAnimationTextStyle1 : ResultScreenAnimationTextStyle2,
              duration: Duration(milliseconds: 900)
          )
        ],
      ),
    );
  }
}
