import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategy_bank_app/models/strategiesModel.dart';
import 'package:strategy_bank_app/reusable_widgets/reusable_appbar.dart';
import 'package:strategy_bank_app/reusable_widgets/reusable_button.dart';

import '../../../../../reusable_widgets/reusable_bottom_appbar.dart';
import '../../suggest_strategies/view/suggest_strategies_screen.dart';
import '../component/article_strategies_components.dart';
import '../controller/article_strategies_controller.dart';

class ArticleStrategies extends StatelessWidget {
  const ArticleStrategies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size mediaSize = MediaQuery.of(context).size;
    Orientation mediaOrientation = MediaQuery.of(context).orientation;
    return GetBuilder<ArticleStrategiesController>(
      init: ArticleStrategiesController(),
      builder: (articleStrategiesController) {
        return Scaffold(
          appBar: ReusableAppBar(
              titleText: articleStrategiesController.selectedIndex == 0
                  ? "Strategies"
                  : "Review"),
          bottomNavigationBar: CustomBottomAppBar(selectedIndex: 2),
          body: Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            height: mediaSize.height * 1,
            width: mediaSize.width * 1,
            child: Stack(
              children: [
                SingleChildScrollView(
                  physics: const ScrollPhysics(),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ToggleScreenButtonComponent(
                        selectedIndex:
                            articleStrategiesController.selectedIndex,
                        addStrategiesFunction: () {
                          articleStrategiesController.toggleAddStrategies();
                        },
                        sendReviewsFunction: () {
                          articleStrategiesController.toggleSendReviews();
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      articleStrategiesController.selectedIndex == 0
                          ? Flexible(
                              child: ListView.separated(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: strategiesList.length,
                              separatorBuilder:
                                  (BuildContext context, int index) =>
                                      const SizedBox(
                                height: 15,
                              ),
                              itemBuilder: (BuildContext context, int index) {
                                return AddStrategiesComponent(
                                  strategiesModel:
                                      strategiesList.elementAt(index),
                                );
                              },
                            ))
                          : SendReviewsWidget(
                              commentController: articleStrategiesController
                                  .commentController),
                      const SizedBox(
                        height: 100,
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    ReusableButton(
                        onPressFunction: articleStrategiesController
                                    .selectedIndex ==
                                0
                            ? () {
                                Get.to(() => const SuggestStrategyController());
                              }
                            : () {},
                        stringText:
                            articleStrategiesController.selectedIndex == 0
                                ? "Add New"
                                : "Send Review"),
                    const SizedBox(
                      height: 10,
                    ),
                  ]),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
