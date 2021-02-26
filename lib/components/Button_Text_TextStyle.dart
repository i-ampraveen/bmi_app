import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class btnText extends StatelessWidget {

  final String text;
  final double size;
  final Color color;

  btnText({@required this.text, @required this.size, @required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: (size ?? 16.0),
        color: color,
        fontFamily: 'San francisco',
        letterSpacing: 2.0,
        wordSpacing: 2.0
      ),
    );
  }
}
