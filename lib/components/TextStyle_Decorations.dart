import 'dart:ui';
import 'package:bmi_app_one/utils/hexcolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


String _appBarText = "BMI CALCULATOR";
//String _buttonText = "CALCULATE";

Color _rightScrnColor = HexColor("#f5cc0a");
Color _leftScrnColor = HexColor("#f7971e");


BoxDecoration openingScreenBgDecoration =
BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [_leftScrnColor, _rightScrnColor]
    )
);

TextStyle openingScreenTextStyle =
TextStyle(
  color: Colors.black,
  fontSize: 48.0,
  fontWeight: FontWeight.bold,
  letterSpacing: 2.0,
  fontFamily: 'San francisco',
);

/* Opening Screen Text */
TextStyle openingScreenTextStyle1 =
TextStyle(
  color: Colors.black,
  fontSize: 24.0,
  fontWeight: FontWeight.bold,
  letterSpacing: 2.0,
  fontFamily: 'San francisco',
);

/* App Bar Text */
Text homeScreenAppBarText =
Text(_appBarText,
    style: TextStyle(
        fontSize: 22.0,
        fontFamily: 'San francisco',
        wordSpacing: 2.0,
        letterSpacing: 1.0
    ));

