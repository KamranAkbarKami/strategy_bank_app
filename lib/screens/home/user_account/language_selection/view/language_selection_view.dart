import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategy_bank_app/reusable_widgets/reusable_appbar.dart';
import 'package:strategy_bank_app/screens/home/user_account/language_selection/components/language_selection_view_components.dart';

import '../controller/language_selection_controller.dart';

class LanguageSelection extends StatelessWidget {
  const LanguageSelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size mediaSize = MediaQuery.of(context).size;
    Orientation mediaOrientation = MediaQuery.of(context).orientation;
    return Scaffold(
        appBar: ReusableAppBar(
          titleText: "Language",
          onPressFunction: () {
            Get.back();
          },
        ),
        body: GetBuilder<LanguageController>(
          init: LanguageController(),
          builder: (languageController) {
            return SafeArea(
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
                    Flexible(
                        child: ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            separatorBuilder:
                                (BuildContext context, int index) =>
                                    const SizedBox(height: 15),
                            itemCount: languagesList.length,
                            itemBuilder: (context, index) {
                              return LanguageTile(
                                index: index,
                                selectedIndex: languageController.selectedIndex,
                                languageTitle: languagesList[index],
                                selectFunction: () {
                                  languageController.changeLanguageFunction(
                                      newSelectedIndex: index);
                                },
                              );
                            })),
                    const SizedBox(
                      height: 125,
                    ),
                  ],
                ),
              ),
            ));
          },
        ));
  }
}

List<String> languagesList = [
  "English",
  "Espanol",
  "Русский",
  "Bahansa Indonesia",
  "Turkce",
  "Deutsch",
  "Italiano",
  "Francais",
  "Polski",
  "Nederland",
  "Deutsch",
];
