// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:strategy_bank_app/reusable_widgets/reusableTextFields.dart';
import 'package:strategy_bank_app/reusable_widgets/reusable_button.dart';
import '../gen/assets.gen.dart';
import '../screens/home/home_page/view/home_page_view.dart';
import '../screens/home/strategies/view/articallFilter.dart';
import '../screens/home/user_account/change_profile_info/view/change_profile_info_view.dart';
import '../utils/colors/colors.dart';
import '../utils/text_styles/textstyles.dart';

class ReusableAppBar extends StatelessWidget implements PreferredSizeWidget {
  String titleText;
  bool showLeading;
  Function()? onPressFunction;

  ReusableAppBar(
      {Key? key,
      this.titleText = "",
      required this.onPressFunction,
      this.showLeading = true})
      : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(titleText),
      titleTextStyle: onBoardingMainTextStyle,
      iconTheme: const IconThemeData(),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      leadingWidth: 100,
      leading: showLeading
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(width: 20),
                Flexible(
                  child:
                      ReusableRoundBackButton(onPressFunction: onPressFunction),
                ),
              ],
            )
          : const SizedBox.shrink(),
    );
  }
}

class ReusableAppBarTwo extends StatelessWidget implements PreferredSizeWidget {
  String titleText;

  ReusableAppBarTwo({Key? key, required this.titleText}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(titleText),
      titleTextStyle: onBoardingMainTextStyle,
      iconTheme: const IconThemeData(),
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
        TextButton(
            onPressed: () {
              Get.to(() => const ChangeProfileInfoScreen());
            },
            child: Text(
              "Change Personal Info",
              style: textStyle146Primary,
            )),
        const SizedBox(
          width: 10,
        )
      ],
    );
  }
}

class ReusableAppBarCancel extends StatelessWidget
    implements PreferredSizeWidget {
  String titleText;
  bool showLeading;

  ReusableAppBarCancel({Key? key, this.titleText = "", this.showLeading = true})
      : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(titleText),
      titleTextStyle: onBoardingMainTextStyle,
      iconTheme: const IconThemeData(),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      // backgroundColor: cWhiteColor,
      elevation: 0,
      leadingWidth: 100,

      leading: showLeading
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(width: 10),
                Flexible(
                  child: (TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text(
                        "Cancel",
                        style: textStyle146Primary,
                      ))),
                ),
              ],
            )
          : const SizedBox.shrink(),
    );
  }
}

class HomePageAppBarCancel extends StatelessWidget
    implements PreferredSizeWidget {
  TextEditingController searchFieldController;

  HomePageAppBarCancel({Key? key, required this.searchFieldController})
      : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: AppBar(
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: cWhiteColor,
        ),
        backgroundColor: cWhiteColor,
        title: SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: TSearchField(textEditingController: searchFieldController)),
      ),
    );
  }
}

class StrategyAppbar extends StatelessWidget implements PreferredSizeWidget {
  TextEditingController searchFieldController;
  Function() cutAllTextFunction;
  Function(String)? onChangeFunction;

  StrategyAppbar(
      {Key? key,
        required this.onChangeFunction,
      required this.searchFieldController,
      required this.cutAllTextFunction})
      : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: AppBar(
          title: SizedBox(
              height: 50,
              child: TStrategySearchField(
                onChangeFunction: onChangeFunction,
                  cutAllTextFunction: cutAllTextFunction,
                  textEditingController: searchFieldController)),
          titleTextStyle: onBoardingMainTextStyle,
          iconTheme: const IconThemeData(),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          // backgroundColor: cWhiteColor,
          elevation: 0,
          leading: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(width: 20),
              Flexible(
                child: ReusableRoundBackButton(onPressFunction: () {
                  Get.offAll(() => const HomePageView());
                }),
              ),
            ],
          )),
    );
  }
}

class StrategyAppbarSearching extends StatelessWidget
    implements PreferredSizeWidget {
  TextEditingController searchFieldController;
  Function() cutAllTextFunction;
  Function(String)? onChangeFunction;

  StrategyAppbarSearching(
      {Key? key,
        required this.onChangeFunction,
      required this.searchFieldController,
      required this.cutAllTextFunction})
      : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: AppBar(
        title: SizedBox(
            height: 50,
            child: TStrategySearchField(
              onChangeFunction: onChangeFunction,
                cutAllTextFunction: cutAllTextFunction,
                textEditingController: searchFieldController)),
        titleTextStyle: onBoardingMainTextStyle,
        iconTheme: const IconThemeData(),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleSpacing: 10.0,
        actions: [
          const SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {
              Get.to(() => const ArticlesFilterScreen());
            },
            child: Image.asset(
              Assets.commonIcons.topicsFilter,
              height: 24,
              width: 24,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
    );
  }
}
