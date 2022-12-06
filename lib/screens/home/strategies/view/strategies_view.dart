// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategy_bank_app/models/strategiesModel.dart';

import '../../../../reusable_widgets/reusable_appbar.dart';
import '../../../../reusable_widgets/reusable_bottom_appbar.dart';
import '../controller/strategies_controller.dart';

class StrategiesView extends StatelessWidget {
  const StrategiesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size mediaSize = MediaQuery.of(context).size;
    Orientation mediaOrientation = MediaQuery.of(context).orientation;
    return GetBuilder<StrategiesController>(
      init: StrategiesController(),
      builder: (strategiesController) {
        return Scaffold(
            appBar: StrategyAppbar(
              searchFieldController: strategiesController.searchFieldController,
            ),
            body: SafeArea(
                child: Container(
              height: mediaSize.height * 1,
              width: mediaSize.width * 1,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: SingleChildScrollView(
                physics: const ScrollPhysics(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    // Flexible(
                    //     child: ListView.separated(
                    //         physics: const NeverScrollableScrollPhysics(),
                    //         shrinkWrap: true,
                    //         separatorBuilder:
                    //             (BuildContext context, int index) =>
                    //                 const SizedBox(height: 15),
                    //         itemCount: strategiesList.length,
                    //         itemBuilder: (context, index) {
                    //           return StrategiesCard(
                    //             index: index,
                    //             selectedIndex: languageController.selectedIndex,
                    //             languageTitle: strategiesList[index],
                    //             selectFunction: () {
                    //               languageController.changeLanguageFunction(
                    //                   newSelectedIndex: index);
                    //             },
                    //           );
                    //         })),
                    const SizedBox(
                      height: 125,
                    ),
                  ],
                ),
              ),
            )));
      },
    );
  }
}
