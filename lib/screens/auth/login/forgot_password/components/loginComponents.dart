import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:otp_pin_field/otp_pin_field.dart';

import '../../../../../utils/colors/colors.dart';

class EnterOtpFieldComponent extends StatelessWidget {
  Function(String) onSubmitFunction;
  Function(String) onChangeFunction;

  EnterOtpFieldComponent(
      {Key? key,
      required this.onSubmitFunction,
      required this.onChangeFunction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OtpPinField(
        onSubmit: onSubmitFunction,
        onChange: onChangeFunction,
        keyboardType: TextInputType.number,
        // to decorate your Otp_Pin_Field
        otpPinFieldStyle: const OtpPinFieldStyle(
            textStyle: TextStyle(color: cGreyColor),
            // border color for inactive/unfocused Otp_Pin_Field
            defaultFieldBorderColor: Colors.transparent,
            // border color for active/focused Otp_Pin_Field
            activeFieldBorderColor: Colors.transparent,
            // Background Color for inactive/unfocused Otp_Pin_Field
            defaultFieldBackgroundColor: cWhiteAccentColorThree,
            activeFieldBackgroundColor:
                cWhiteAccentColorThree // Background Color for active/focused Otp_Pin_Field
            ),
        maxLength: 4,
        // no of pin field
        showCursor: true,
        //bool to show cursor in pin field or not
        cursorColor: cGreyColor,
        // to choose cursor color
        //bool which manage to show custom keyboard
        cursorWidth: 3,
        // to select cursor width
        fieldWidth: 77,
        fieldHeight: 55,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        otpPinFieldInputType: OtpPinFieldInputType.password,
        // predefine decorate of pinField use  OtpPinFieldDecoration.defaultPinBoxDecoration||OtpPinFieldDecoration.underlinedPinBoxDecoration||OtpPinFieldDecoration.roundedPinBoxDecoration
        //use OtpPinFieldDecoration.custom  (by using this you can make Otp_Pin_Field according to yourself like you can give fieldBorderRadius,fieldBorderWidth and etc things)
        otpPinFieldDecoration: OtpPinFieldDecoration.defaultPinBoxDecoration);
  }
}
