import 'dart:async';
import 'file:///C:/Users/00004987/IdeaProjects/bmi_app_one/lib/components/TextStyle_Decorations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'HomeScreen.dart';

class OpeningScreen extends StatefulWidget {
  @override
  _OpeningScreenState createState() => _OpeningScreenState();
}

class _OpeningScreenState extends State<OpeningScreen> {
  @override

  String welcomeText = "Welcome to \n BMI App";
  bool animated = false;

  void initState(){
    super.initState();
    Timer(Duration(seconds: 2), () => Navigator.of(context)
        .pushAndRemoveUntil(MaterialPageRoute(
        builder: (context) => home_screen()),
            (Route<dynamic> route) => false));
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        animated = !animated;
      });
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: openingScreenBgDecoration,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedDefaultTextStyle(
                  curve: Curves.easeOutSine,
                  child: Text(welcomeText),
                  style: animated ? openingScreenTextStyle : openingScreenTextStyle1,
                  duration: Duration(milliseconds: 950))
            ],
          ),
        ),
      ),
    );
  }
}

