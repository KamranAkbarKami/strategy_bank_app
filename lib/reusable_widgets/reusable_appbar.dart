// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:strategy_bank_app/reusable_widgets/reusableTextFields.dart';
import 'package:strategy_bank_app/reusable_widgets/reusable_button.dart';
import '../screens/home/user_account/change_profile_info/view/change_profile_info_view.dart';
import '../utils/colors/colors.dart';
import '../utils/text_styles/textstyles.dart';

class ReusableAppBar extends StatelessWidget implements PreferredSizeWidget {
  String titleText;
  bool showLeading;

  ReusableAppBar({Key? key, this.titleText = "", this.showLeading = true})
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
                const SizedBox(width: 20),
                Flexible(
                  child: ReusableRoundBackButton(onPressFunction: () {
                    Get.back();
                  }),
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
    return AppBar(
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
    );
  }
}

class StrategyAppbar extends StatelessWidget implements PreferredSizeWidget {
  TextEditingController searchFieldController;

  StrategyAppbar({Key? key, required this.searchFieldController})
      : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: SizedBox(
            height: 50,
            child: TStrategySearchField(
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
                Get.back();
              }),
            ),
          ],
        ));
  }
}
