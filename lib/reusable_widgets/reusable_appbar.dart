// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategy_bank_app/reusable_widgets/reusable_button.dart';
import 'package:strategy_bank_app/utils/colors/colors.dart';

import '../utils/text_styles/textstyles.dart';

class ReusableAppBar extends StatelessWidget implements PreferredSizeWidget {
  String titleText;
  bool showLeading;

  ReusableAppBar({Key? key, this.titleText = "", this.showLeading = true})
      : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(titleText),
      titleTextStyle: onBoardingMainTextStyle,
      iconTheme: IconThemeData(),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      // backgroundColor: cWhiteColor,
      elevation: 0,
      leadingWidth: 100,

      leading: showLeading
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(width: 20),
                Flexible(
                  child: ReusableRoundBackButton(onPressFunction: () {
                    Get.back();
                  }),
                ),
              ],
            )
          : SizedBox.shrink(),
    );
  }
}

class ReusableAppBarTwo extends StatelessWidget implements PreferredSizeWidget {
  String titleText;

  ReusableAppBarTwo({Key? key, required this.titleText}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(titleText),
      titleTextStyle: onBoardingMainTextStyle,
      iconTheme: IconThemeData(),
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
        TextButton(
            onPressed: () {
              // Get.to(() =>);
            },
            child: Text(
              "Change Personal Info",
              style: textStyle146Primary,
            )),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}
