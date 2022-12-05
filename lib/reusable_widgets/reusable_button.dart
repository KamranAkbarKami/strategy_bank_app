//ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:strategy_bank_app/utils/colors/colors.dart';

import '../utils/text_styles/textstyles.dart';

class ReusableButton extends StatelessWidget {
  Function()? onPressFunction;
  String stringText;

  ReusableButton({
    required this.onPressFunction,
    required this.stringText,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressFunction,
        child: Text(stringText, style: buttonTextStyle),
        style: ElevatedButton.styleFrom(
            fixedSize: Size(Get.size.width, 55),
            backgroundColor: cPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 10,
            shadowColor: cShadowColor));
  }
}

class ReusableRoundButton extends StatelessWidget {
  Function()? onPressFunction;

  ReusableRoundButton({
    required this.onPressFunction,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressFunction,
        child: Icon(
          Icons.arrow_forward_ios_rounded,
          color: cWhiteColor,
          size: 30,
        ),
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          fixedSize: Size(60, 60),
          backgroundColor: cPrimaryColor,
        ));
  }
}

class ReusableRoundBackButton extends StatelessWidget {
  Function()? onPressFunction;

  ReusableRoundBackButton({
    required this.onPressFunction,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressFunction,
      child: Container(
          height: 40,
          width: 40,
          child: Center(
            child: Icon(
              Icons.arrow_back_ios_rounded,
              color: cWhiteColor,
              size: 20,
            ),
          ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: cPrimaryColor,
          )),
    );
  }
}
