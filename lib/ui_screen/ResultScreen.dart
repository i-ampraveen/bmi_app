import 'package:bmi_app_one/utils/hexcolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BMIResult extends StatelessWidget {

  Color _app_bg_color = HexColor('#2c2c2e');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _app_bg_color,
      body: Container(
        width: ScreenUtil().screenWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Your BMI is ",
            style: TextStyle(
              color: Colors.white70,
              fontSize: 24.ssp,
              fontFamily: 'San francisco',
            ),
            ),
          ],
        ),
      ),
    );
  }
}
