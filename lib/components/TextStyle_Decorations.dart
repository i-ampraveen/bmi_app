import 'dart:ui';
import 'package:bmi_app_one/utils/hexcolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

String _appBarText = "BMI CALCULATOR";

Color _yellowShade = HexColor("#f1b81c").withOpacity(0.9);
Color _yellowShade1 = HexColor("#a07a12");

BoxDecoration openingScreenBgDecoration =
BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [_yellowShade, _yellowShade1]
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

