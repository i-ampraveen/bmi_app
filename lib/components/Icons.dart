import 'package:bmi_app_one/utils/hexcolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class RoundIconBtnMinus extends StatelessWidget {
  RoundIconBtnMinus({@required this.icon});

  final IconButton icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: IconButton(icon:
        new Icon(FontAwesome.minus,
          color: Colors.white,
      ),
      ),
      shape: CircleBorder(),
      fillColor: HexColor("#4c4f5e"),
    );
  }
}

class RoundIconBtnPlus extends StatelessWidget {
  RoundIconBtnPlus({@required this.icon});

  final IconButton icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: IconButton(
        icon: new Icon(
            FontAwesome.plus,
            color: Colors.white
        ),
      ),
      shape: CircleBorder(),
      fillColor: HexColor("#4c4f5e"),
    );
  }
}

class GenderIcon extends StatelessWidget {

  final IconData genderIcon;
  final double iconSize;
  final Color color;

  GenderIcon({@required this.genderIcon, @required this.iconSize, @required this.color});

  @override
  Widget build(BuildContext context) {
    return Icon(
        genderIcon,
      color: color,
      size: iconSize,
    );
  }
}



