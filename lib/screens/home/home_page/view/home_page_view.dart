// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../models/strategiesModel.dart';
import '../../../../reusable_widgets/reusable_appbar.dart';
import '../../../../reusable_widgets/reusable_bottom_appbar.dart';
import '../../../../utils/text_styles/textstyles.dart';
import '../../strategies/view/articallFilter.dart';
import '../components/home_page_components.dart';
import '../controller/home_page_controller.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log("Inside Home Page View");

    Size mediaSize = MediaQuery.of(context).size;
    Orientation mediaOrientation = MediaQuery.of(context).orientation;
    return GetBuilder<HomePageController>(
      init: HomePageController(),
      builder: (homePageController) {
        return Scaffold(
          appBar: HomePageAppBarCancel(
              searchFieldController: homePageController.searchFieldController),
          bottomNavigationBar: CustomBottomAppBar(selectedIndex: 0),
          body: Container(
            height: mediaSize.height * 1,
            width: mediaSize.width * 1,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: SingleChildScrollView(
              physics: ScrollPhysics(),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Monday, August 8th",
                      style: homePageDateTextStyle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Welcome Back, Alex",
                      style: homePageUserNameTextStyle,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ToggleHomeScreenComponent(
                        selectedIndex: homePageController.selectedIndex,
                        discoverToggleFunction: () {
                          homePageController.toggleDiscover();
                        },
                        favouritesToggleFunction: () {
                          homePageController.toggleFavourites();
                        },
                        popularToggleFunction: () {
                          homePageController.togglePopular();
                        }),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 300,
                      width: mediaSize.width * 1,
                      child: Center(
                        child: ListView.separated(
                          itemCount: strategiesList.length,
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (BuildContext context, int index) =>
                              const SizedBox(
                            width: 10,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            return HomepageContentWidget(
                              favouriteFunction: () {
                                homePageController.selectOrUnselectFavourite(
                                    strategiesIndex: index);
                              },
                              favouriteStrategyList:
                                  homePageController.favouritesStrategiesList,
                              strategyIndex: index,
                              strategiesModel: strategiesList.elementAt(index),
                              difficulty: "Anxiety",
                              onTapFunction: () {},
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Topics",
                          style: homePageUserNameTextStyle,
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(() => ArticlesFilterScreen());
                          },
                          child: Image.asset(
                            Assets.commonIcons.topicsFilter,
                            height: 24,
                            width: 24,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment:
                          mediaOrientation == Orientation.portrait
                              ? MainAxisAlignment.spaceBetween
                              : MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TopicsComponent(
                            imageAsset: Assets
                                .strategiesPersonImages.strategiesHeadingOne,
                            topicText: "Tips",
                            onTapFunction: () {}),
                        TopicsComponent(
                            imageAsset: Assets
                                .strategiesPersonImages.strategiesHeadingTwo,
                            topicText: "Advises",
                            onTapFunction: () {}),
                        TopicsComponent(
                            imageAsset: Assets
                                .strategiesPersonImages.strategiesHeadingThree,
                            topicText: "Kids",
                            onTapFunction: () {}),
                        TopicsComponent(
                            imageAsset: Assets
                                .strategiesPersonImages.strategiesHeadingFour,
                            topicText: "New",
                            onTapFunction: () {}),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ]),
            ),
          ),
        );
      },
    );
  }
}
