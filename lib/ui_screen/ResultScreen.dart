import 'package:bmi_app_one/components/Button_Text_TextStyle.dart';
import 'package:bmi_app_one/utils/hexcolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BMIResult extends StatelessWidget {

  Color _app_bg_color = HexColor("#111328");
  Color _InActiveColor = Colors.white.withOpacity(0.7);
  Color _Containercolor = HexColor("#1D1E33");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _app_bg_color,
      /* Results screen App Bar */
      appBar: AppBar(
        title: Text(""),
        backgroundColor: _app_bg_color,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        width: ScreenUtil().screenWidth,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0.02.sh, 0.3.sw, 0),
                /* Top Text */
                child: text(
                    text1: "Your Result",
                    size: 42.ssp,
                    color: _InActiveColor
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0.05.sw, 0.03.sh, 0.05.sw, 0),
                /* Actual Result Display */
                child: Container(
                  color: _Containercolor,
                  width: ScreenUtil().screenWidth,
                  height: 0.6.sh,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    ],
                  ),
                ),
              )
            ],
          ),
      ),
    );
  }
}
