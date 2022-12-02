//ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:strategy_bank_app/utils/colors/colors.dart';

import '../utils/text_styles/textstyles.dart';

class ReusableButton extends StatelessWidget {
  Function()? onPressFunction;
  String text;

  ReusableButton({
    required this.onPressFunction,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressFunction,
        child: Text(text, style: buttonTextStyle),
        style: ElevatedButton.styleFrom(
          fixedSize: Size(Get.size.width, 55),
          backgroundColor: cPrimaryColor,
        ));
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
