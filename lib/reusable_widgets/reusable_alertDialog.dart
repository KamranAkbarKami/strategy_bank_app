import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:strategy_bank_app/reusable_widgets/reusable_button.dart';

import '../screens/auth/login/sign_in/view/sign_in_view.dart';
import '../utils/colors/colors.dart';
import '../utils/text_styles/textstyles.dart';

class CustomExitAlertDialog extends StatelessWidget {
  const CustomExitAlertDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Are you sure you\nwant to leave?",
            style: cAlertDialogHeaderTextStyle,
          ),
        ],
      ),
      actions: <Widget>[
        CupertinoDialogAction(
          child: Text(
            "Yes",
            style: cAlertDialogButtonTextStyle,
          ),
          onPressed: () {
            Get.offAll(() => SignInView());
          },
        ),
        CupertinoDialogAction(
          child: Text(
            "No",
            style: cAlertDialogButtonTextStyle,
          ),
          onPressed: () {
            Get.back();
          },
        ),
      ],
    );
  }
}

class CustomAlertDialog extends StatelessWidget {
  Function()? onPressFunction;
  String headerText, contentText, buttonText;

  CustomAlertDialog(
      {Key? key,
      required this.onPressFunction,
      required this.buttonText,
      required this.contentText,
      required this.headerText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        content: Container(
          height: 240,
          width: 335,
          decoration: const BoxDecoration(color: cWhiteColor),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                headerText,
                style: alertDialogHeaderTextStyle,
              ),
              Text(
                contentText,
                style: alertDialogContentTextStyle,
                textAlign: TextAlign.center,
              ),
              ReusableButton(
                  onPressFunction: onPressFunction, stringText: buttonText)
            ],
          ),
        ));
  }
}
