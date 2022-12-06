import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../../../reusable_widgets/reusable_alertDialog.dart';
import '../../../../../reusable_widgets/reusable_appbar.dart';
import '../../../../../reusable_widgets/reusable_bottom_appbar.dart';
import '../../../../../reusable_widgets/reusable_button.dart';
import '../../../../../utils/text_styles/textstyles.dart';
import '../component/suggest_strategies_compenent.dart';
import '../controller/suggest_strategies_controller.dart';

class SuggestStrategyController extends StatelessWidget {
  const SuggestStrategyController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size mediaSize = MediaQuery.of(context).size;
    Orientation mediaOrientation = MediaQuery.of(context).orientation;
    return Scaffold(
        appBar: ReusableAppBar(titleText: "Suggest a Strategy"),
        bottomNavigationBar: CustomBottomAppBar(selectedIndex: 3),
        body: GetBuilder<SuggestStrategiesController>(
            init: SuggestStrategiesController(),
            builder: (suggestStrategiesController) {
              return SafeArea(
                child: Container(
                  height: mediaSize.height * 1,
                  width: mediaSize.width * 1,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: CustomScrollView(
                    slivers: [
                      SliverFillRemaining(
                        hasScrollBody: false,
                        child: Form(
                          key: suggestStrategiesController
                              .suggestStrategyFormKey,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              const SizedBox(
                                height: 10,
                              ),
                              SuggestTitleFormField(
                                  textEditingController:
                                      suggestStrategiesController
                                          .suggestTitleNameController),
                              const SizedBox(
                                height: 20,
                              ),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Behaviour",
                                    style: textStyle166,
                                  )),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: const [
                                  Expanded(child: SuggestCustomWidget()),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(child: SuggestCustomWidget()),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(child: SuggestCustomWidget()),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(child: SuggestCustomWidget()),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(child: SuggestCustomWidget()),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Suggested Strategy",
                                    style: textStyle166,
                                  )),
                              const SizedBox(
                                height: 20,
                              ),
                              SuggestionDescriptionFormField(
                                textEditingController:
                                    suggestStrategiesController
                                        .suggestStrategyController,
                              ),
                              const Spacer(),
                              const SizedBox(
                                height: 20,
                              ),
                              ReusableButton(
                                  onPressFunction: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return CustomAlertDialog(
                                              onPressFunction: () {
                                                Get.back();
                                                Get.back();
                                              },
                                              buttonText: "Okay",
                                              contentText:
                                                  "Thank you for you Suggestion",
                                              headerText:
                                                  "Submission Completed");
                                        });
                                  },
                                  stringText: "Add New"),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}
