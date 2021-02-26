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

class calculateButton extends StatelessWidget {

  final Color btnColor;
  final Color txtColor;
  final String text;
  final double width;
  final double height;
  final double size;
  final Function callback;

  calculateButton({@required this.btnColor, @required this.txtColor, @required this.text, @required this.width,
                    @required this.height, @required this.size, @required this.callback});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      padding: EdgeInsets.zero,
      color: btnColor,
      shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(10.0)
      ),
      child: Container(
        width: width,
        height: height,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: (size ?? 16.0),
                color: txtColor,
                fontFamily: 'San francisco',
                letterSpacing: 2.0,
                wordSpacing: 2.0
            ),
          ),
        ),
      ),
      onPressed: () => callback()
    );
  }
}

