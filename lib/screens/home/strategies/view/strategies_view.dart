// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:strategy_bank_app/models/strategiesModel.dart';
import 'package:strategy_bank_app/screens/home/strategies/view/strategies_post_screen.dart';
import 'package:strategy_bank_app/utils/colors/colors.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../models/paywall_model.dart';
import '../../../../reusable_widgets/reusable_appbar.dart';
import '../../../../reusable_widgets/reusable_bottom_appbar.dart';
import '../../paywall/component/paywall_components.dart';
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
        return strategiesController.searchValueEntered == false
            ? Scaffold(
                appBar: StrategyAppbar(
                  onChangeFunction: (enteredValue) {
                    strategiesController.searchOnChangeFunction(
                        enteredValue: enteredValue);
                  },
                  cutAllTextFunction: () {
                    strategiesController.cutAllTextFromForm();
                  },
                  searchFieldController:
                      strategiesController.searchFieldController,
                ),
                bottomNavigationBar: CustomBottomAppBar(selectedIndex: 1),
                body: SafeArea(
                    child: Container(
                  height: mediaSize.height * 1,
                  width: mediaSize.width * 1,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: SingleChildScrollView(
                    physics: const ScrollPhysics(),
                    child: Column(
                      // mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Search Helpful Strategies",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Strategies",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ListView.builder(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            scrollDirection: Axis.vertical,
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: strategiesList.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0),
                                    child: InkWell(
                                      onTap: () {
                                        Get.to(() => StrategiesPostScreen(
                                              strategiesModel:
                                                  strategiesList[index],
                                            ));
                                      },
                                      child: Container(
                                        height: 130,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          color: Color(0xffEEF1F5),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Image.asset(
                                                strategiesList[index]
                                                    .articleImage,
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      strategiesList[index]
                                                          .articleTitle,
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                    SizedBox(
                                                      height: 15,
                                                    ),
                                                    Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      children: [
                                                        Text(
                                                          "4.5",
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        SvgPicture.asset(
                                                          Assets.commonIcons
                                                              .starIconFilled,
                                                        ),
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                        Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors.black,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8.0),
                                                            child: Text(
                                                              "Trauma",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                height: 30,
                                                width: 30,
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100)),
                                                child: InkWell(
                                                  child: Obx(() {
                                                    return strategiesController
                                                            .favouritesStrategiesList
                                                            .contains(index)
                                                        ? Icon(
                                                            Icons
                                                                .favorite_rounded,
                                                            color:
                                                                cPrimaryColor,
                                                          )
                                                        : Icon(
                                                            Icons
                                                                .favorite_border_rounded,
                                                            color:
                                                                cPrimaryColor,
                                                          );
                                                  }),
                                                  onTap: () {
                                                    strategiesController
                                                        .selectOrUnselectFavourite(
                                                            strategiesIndex:
                                                                index);
                                                  },
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            }),
                      ],
                    ),
                  ),
                )))
            : Scaffold(
                appBar: StrategyAppbarSearching(
                  cutAllTextFunction: () {
                    strategiesController.cutAllTextFromForm();
                  },
                  onChangeFunction: (enteredString) {},
                  searchFieldController:
                      strategiesController.searchFieldController,
                ),
                bottomNavigationBar: CustomBottomAppBar(selectedIndex: 1),
                body: SafeArea(
                    child: Container(
                  height: mediaSize.height * 1,
                  width: mediaSize.width * 1,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: SingleChildScrollView(
                    physics: const ScrollPhysics(),
                    child: Column(
                      // mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Search results for “${strategiesController.searchFieldController.text}”",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Recommended",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ListView.separated(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            scrollDirection: Axis.vertical,
                            separatorBuilder:
                                (BuildContext context, int index) =>
                                    const SizedBox(
                                      height: 20,
                                    ),
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: strategiesList.length,
                            itemBuilder: (BuildContext context, int index) {
                              return InkWell(
                                onTap: () {
                                  Get.to(() => StrategiesPostScreen(
                                        strategiesModel: strategiesList[index],
                                      ));
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 10),
                                  height: 130,
                                  width: mediaSize.width * 1,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: cPrimaryColorWithOpacity,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 5),
                                        alignment: Alignment.topRight,
                                        height: 110,
                                        width: 110,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                strategiesList[index]
                                                    .articleImage,
                                              ),
                                              fit: BoxFit.cover),
                                        ),
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(100)),
                                          child: InkWell(
                                            child: Obx(() {
                                              return strategiesController
                                                      .favouritesStrategiesList
                                                      .contains(index)
                                                  ? Icon(
                                                      Icons.favorite_rounded,
                                                      color: cPrimaryColor,
                                                    )
                                                  : Icon(
                                                      Icons
                                                          .favorite_border_rounded,
                                                      color: cPrimaryColor,
                                                    );
                                            }),
                                            onTap: () {
                                              strategiesController
                                                  .selectOrUnselectFavourite(
                                                      strategiesIndex: index);
                                            },
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              strategiesList[index]
                                                  .articleTitle,
                                              style: TextStyle(
                                                  color: cBlackColor,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            RichText(
                                              overflow: TextOverflow.ellipsis,
                                              strutStyle:
                                                  StrutStyle(fontSize: 12.0),
                                              text: TextSpan(
                                                style: TextStyle(
                                                    color: cBlackColor,
                                                    fontSize: 13,
                                                    fontWeight:
                                                        FontWeight.w400),
                                                text: strategiesList[index]
                                                    .articleDescription,
                                              ),
                                            ),
                                            Spacer(),
                                            Row(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Text(
                                                  "4.5",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                SvgPicture.asset(
                                                  Assets.commonIcons
                                                      .starIconFilled,
                                                ),
                                                SizedBox(
                                                  width: 15,
                                                ),
                                                Container(
                                                  height: 30,
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 10),
                                                  decoration: BoxDecoration(
                                                    color: Colors.black,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    "Trauma",
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ],
                    ),
                  ),
                )));
      },
    );
  }
}
