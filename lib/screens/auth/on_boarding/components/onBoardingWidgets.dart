// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:strategy_bank_app/utils/colors/colors.dart';

import '../../../../reusable_widgets/reusable_button.dart';
import '../../../../reusable_widgets/reuseable_dropdown.dart';
import '../../../../utils/text_styles/textstyles.dart';

class OnBoardingWidgets extends StatelessWidget {
  String steps, svgAssetName, header, description;
  int index;

  OnBoardingWidgets({
    Key? key,
    required this.steps,
    required this.header,
    required this.description,
    required this.svgAssetName,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: MediaQuery.of(context).orientation == Orientation.portrait
          ? const NeverScrollableScrollPhysics()
          : const BouncingScrollPhysics(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
              child: svgAssetName == ""
                  ? const SizedBox.shrink()
                  : SvgPicture.asset(
                      svgAssetName,
                    )),
          const SizedBox(
            height: 20,
          ),
          index == 3
              ? Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Profile",
                      style: primaryColorTextStyle,
                    ),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                )
              : const SizedBox.shrink(),
          Text(
            header,
            style: onBoardingMainTextStyle,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(description,
              style: formTextStyleOnBoarding, textAlign: TextAlign.justify),
          index == 1
              ? Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    DCustomDropdown(index: 0),
                    const SizedBox(
                      height: 10,
                    ),
                    DCustomDropdown(index: 1),
                  ],
                )
              : const SizedBox.shrink()
        ],
      ),
    );
  }
}

class ProgressIdentifierComponent extends StatelessWidget {
  int selectedIndex, itemIndex;

  ProgressIdentifierComponent(
      {Key? key, required this.itemIndex, required this.selectedIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 8,
      decoration: BoxDecoration(
        color:
            selectedIndex == itemIndex ? cPrimaryColor : cWhiteAccentColorTwo,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
