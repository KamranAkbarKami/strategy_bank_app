// ignore_for_file: must_be_immutable, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:strategy_bank_app/screens/home/favourites/view/favourites_view.dart';
import 'package:strategy_bank_app/screens/home/home_page/view/home_page_view.dart';
import 'package:strategy_bank_app/screens/home/strategies/view/strategies_view.dart';
import 'package:strategy_bank_app/screens/home/user_account/view/user_account_view.dart';
import 'package:strategy_bank_app/utils/colors/colors.dart';

import '../utils/gen/assets.gen.dart';
import '../utils/text_styles/textstyles.dart';

class CustomBottomAppBar extends StatelessWidget {
  int selectedIndex;

  CustomBottomAppBar({required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: cWhiteColor,
      elevation: 0.0,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(width: 1.5, color: cWhiteAccentColorThree),
          ),
        ),
        height: 80,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CustomBottomAppBarComponent(
                itemIndex: 0,
                selectedIndex: selectedIndex,
                text: "Home",
                assetName: Assets.assets.icons.home,
                onTapFunction: () {
                  Get.offAll(() => HomePageView(),
                      transition: Transition.fadeIn);
                }),
            CustomBottomAppBarComponent(
                itemIndex: 1,
                selectedIndex: selectedIndex,
                text: "Strategies",
                assetName: Assets.assets.icons.strategies,
                onTapFunction: () {
                  Get.offAll(() => StrategiesView(),
                      transition: Transition.fadeIn);
                }),
            CustomBottomAppBarComponent(
                itemIndex: 2,
                selectedIndex: selectedIndex,
                text: "Favourites",
                assetName: Assets.assets.icons.favourites,
                onTapFunction: () {
                  Get.offAll(() => FavouritesView(),
                      transition: Transition.fadeIn);
                }),
            CustomBottomAppBarComponent(
                itemIndex: 3,
                selectedIndex: selectedIndex,
                text: "Account",
                assetName: Assets.assets.icons.account,
                onTapFunction: () {
                  Get.offAll(() => UserAccountView(),
                      transition: Transition.fadeIn);
                }),
          ],
        ),
      ),
    );
  }
}

class CustomBottomAppBarComponent extends StatelessWidget {
  int selectedIndex;
  int itemIndex;
  String assetName;
  String text;
  Function()? onTapFunction;

  CustomBottomAppBarComponent(
      {required this.selectedIndex,
      required this.itemIndex,
      required this.text,
      required this.assetName,
      required this.onTapFunction});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectedIndex == itemIndex ? null : onTapFunction,
      child: Container(
        alignment: Alignment.center,
        height: 70,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              assetName,
              height: 24,
              width: 24,
              color: selectedIndex == itemIndex ? cGreenColor : cBlackColor,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              text,
              style: selectedIndex == itemIndex
                  ? bottomAppBarTextStyleTwo
                  : bottomAppBarTextStyleOne,
            )
          ],
        ),
      ),
    );
  }
}
