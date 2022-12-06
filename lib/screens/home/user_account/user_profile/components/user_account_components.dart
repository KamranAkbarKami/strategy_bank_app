import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:strategy_bank_app/utils/colors/colors.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../../utils/text_styles/textstyles.dart';

class UserHeader extends StatelessWidget {
  const UserHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      color: Colors.transparent,
      height: 90,
      width: MediaQuery.of(context).size.width * 1,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                color: cGreyColor,
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(Assets.user.userAccountImage))),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Alex Lee", style: textStyle166),
                Text(
                  "alex.lee12@gmail.com",
                  style: alertDialogContentTextStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OptionTileThreeWidgets extends StatelessWidget {
  String leadingImageString;
  String titleString;
  Function()? onTapFunction;

  OptionTileThreeWidgets({
    Key? key,
    required this.onTapFunction,
    required this.titleString,
    required this.leadingImageString,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapFunction,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        height: 56,
        width: MediaQuery.of(context).size.width * 1,
        decoration: BoxDecoration(
            color: cWhiteAccentColorThree,
            borderRadius: BorderRadius.circular(12)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              leadingImageString,
              height: 24,
              width: 24,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              titleString,
              style: textStyle164Black,
            ),
            const SizedBox(
              width: 10,
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              color: cPrimaryColor,
              size: 16,
            ),
          ],
        ),
      ),
    );
  }
}

class OptionTileFourWidgets extends StatelessWidget {
  String leadingImageString;
  String titleString;
  Function()? onTapFunction;
  String selectedLanguage;

  OptionTileFourWidgets({
    Key? key,
    required this.onTapFunction,
    required this.titleString,
    required this.leadingImageString,
    required this.selectedLanguage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapFunction,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        height: 56,
        width: MediaQuery.of(context).size.width * 1,
        decoration: BoxDecoration(
            color: cWhiteAccentColorThree,
            borderRadius: BorderRadius.circular(12)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              leadingImageString,
              height: 24,
              width: 24,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              titleString,
              style: textStyle164Black,
            ),
            const Spacer(),
            Text(
              selectedLanguage,
              style: formTextStyle,
            ),
            const SizedBox(
              width: 5,
            ),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              color: cPrimaryColor,
              size: 16,
            ),
          ],
        ),
      ),
    );
  }
}

class OptionTileSwitchWidget extends StatelessWidget {
  String leadingImageString;
  String titleString;
  Function()? onTapFunction;
  Function(bool)? onSwitchChanged;
  bool switchValue;

  OptionTileSwitchWidget(
      {Key? key,
      required this.onTapFunction,
      required this.titleString,
      required this.onSwitchChanged,
      required this.switchValue,
      required this.leadingImageString})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapFunction,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        height: 56,
        width: MediaQuery.of(context).size.width * 1,
        decoration: BoxDecoration(
            color: cWhiteAccentColorThree,
            borderRadius: BorderRadius.circular(12)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              leadingImageString,
              height: 24,
              width: 24,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              titleString,
              style: textStyle164Black,
            ),
            const SizedBox(
              width: 10,
            ),
            const Spacer(),
            Switch(value: switchValue, onChanged: onSwitchChanged),
          ],
        ),
      ),
    );
  }
}
