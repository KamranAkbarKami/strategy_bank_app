// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategy_bank_app/models/onboarding.dart';

import '../../../../reusable_widgets/reusable_button.dart';
import '../../../../utils/colors/colors.dart';
import '../../../../utils/text_styles/textstyles.dart';
import '../../login/sign_in/view/sign_in_view.dart';
import '../components/onBoardingWidgets.dart';
import '../controller/onBoardingController.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size mediaSize = MediaQuery.of(context).size;
    Orientation mediaOrientation = MediaQuery.of(context).orientation;
    log("Inside On  Boarding Screen");
    return Scaffold(
      body: GetBuilder<OnBoardingController>(
          init: OnBoardingController(),
          builder: (onBoardingController) {
            return SafeArea(
              child: Container(
                padding: EdgeInsets.all(10),
                height: mediaSize.height * 1,
                width: mediaSize.width * 1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 1,
                      child: Stack(
                        children: [
                          Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Step ${onBoardingList[onBoardingController.pageIndex].steps}",
                                style: onBoardingMainTextStyle,
                              )),
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                                onPressed: () {
                                  Get.offAll(() => SignInView());
                                },
                                child: Text(
                                  "Skip",
                                  style: skipTextStyle,
                                )),
                          )
                        ],
                      ),
                    ),
                    mediaOrientation == Orientation.portrait
                        ? onBoardingController.pageIndex == 1
                            ? SizedBox.shrink()
                            : Spacer()
                        : SizedBox.shrink(),
                    Expanded(
                      flex: 3,
                      child: PageView.builder(
                          controller: onBoardingController.pageController,
                          itemCount: onBoardingList.length,
                          scrollDirection: Axis.horizontal,
                          onPageChanged: (value) {
                            onBoardingController.setPageIndex(index: value);
                            log(value.toString());
                          },
                          itemBuilder: (context, index) {
                            return OnBoardingWidgets(
                              index: index,
                              steps: onBoardingList[index].steps,
                              header: onBoardingList[index].header,
                              description: onBoardingList[index].description,
                              svgAssetName: onBoardingList[index].assetName,
                            );
                          }),
                    ),
                    mediaOrientation == Orientation.portrait
                        ? Spacer()
                        : SizedBox.shrink(),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: 80,
                          height: 8,
                          decoration: BoxDecoration(
                            color: cWhiteAccentColorTwo,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ProgressIdentifierComponent(
                                selectedIndex: onBoardingController.pageIndex,
                                itemIndex: 0,
                              ),
                              ProgressIdentifierComponent(
                                selectedIndex: onBoardingController.pageIndex,
                                itemIndex: 1,
                              ),
                              ProgressIdentifierComponent(
                                selectedIndex: onBoardingController.pageIndex,
                                itemIndex: 2,
                              ),
                              ProgressIdentifierComponent(
                                selectedIndex: onBoardingController.pageIndex,
                                itemIndex: 3,
                              )
                            ],
                          ),
                        ),
                        onBoardingController.pageIndex == 3
                            ? SizedBox(
                                width: 170,
                                child: ReusableButton(
                                    onPressFunction: () {
                                      Get.offAll(() => SignInView());
                                    },
                                    stringText: "Get Started"))
                            : ReusableRoundButton(
                                onPressFunction: () {
                                  onBoardingController.pageController.nextPage(
                                      duration: Duration(milliseconds: 300),
                                      curve: Curves.ease);
                                  onBoardingController.increaseIndex();
                                },
                              )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
