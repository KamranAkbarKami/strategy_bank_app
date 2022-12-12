import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategy_bank_app/reusable_widgets/reusable_alertDialog.dart';
import '../../../../../gen/assets.gen.dart';
import '../../../../../reusable_widgets/reusable_appbar.dart';
import '../../../../../reusable_widgets/reusable_bottom_appbar.dart';
import '../../../../../utils/text_styles/textstyles.dart';
import '../../../favourites/view/favourites_view.dart';
import '../../changePassword/view/change_password_enter_email_view.dart';
import '../../language_selection/view/language_selection_view.dart';
import '../components/user_account_components.dart';
import '../controller/user_profile_controller.dart';

class UserAccountView extends StatelessWidget {
  const UserAccountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size mediaSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: ReusableAppBarTwo(titleText: "Account"),
        bottomNavigationBar: CustomBottomAppBar(selectedIndex: 3),
        body: GetBuilder<UserAccountViewController>(
          init: UserAccountViewController(),
          builder: (userAccountViewController) {
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
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(
                            height: 10,
                          ),
                          const UserHeader(),
                          const SizedBox(
                            height: 10,
                          ),
                          OptionTileThreeWidgets(
                              onTapFunction: () {
                                Get.to(() => const FavouritesView());
                              },
                              titleString: "Your Favourites",
                              leadingImageString:
                                  Assets.account.yourFavouritesIcon),
                          const SizedBox(
                            height: 10,
                          ),
                          OptionTileThreeWidgets(
                              onTapFunction: () {
                                Get.to(() => const ChangePasswordView());
                              },
                              titleString: "Change Password",
                              leadingImageString:
                                  Assets.account.changePasswordIcon),
                          const SizedBox(
                            height: 10,
                          ),
                          OptionTileFourWidgets(
                              onTapFunction: () {
                                Get.to(() => const LanguageSelection());
                              },
                              titleString: "Language",
                              selectedLanguage: "English",
                              leadingImageString: Assets.account.languageIcon),
                          const SizedBox(
                            height: 10,
                          ),
                          OptionTileThreeWidgets(
                              onTapFunction: () {},
                              titleString: "Notifications",
                              leadingImageString:
                                  Assets.account.notificationsIcon),
                          const SizedBox(
                            height: 10,
                          ),
                          OptionTileSwitchWidget(
                              onTapFunction: () {},
                              onSwitchChanged: (val) {
                                userAccountViewController.subscriptionToggle(
                                    switchValue: val);
                              },
                              switchValue:
                                  userAccountViewController.subscriptionValue,
                              titleString: "Manage Subscription",
                              leadingImageString:
                                  Assets.account.manageSubscriptionIcon),
                          const SizedBox(
                            height: 10,
                          ),
                          OptionTileThreeWidgets(
                              onTapFunction: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return const CustomExitAlertDialog();
                                    });
                              },
                              titleString: "Log Out",
                              leadingImageString: Assets.account.logOutIcon),
                          const SizedBox(
                            height: 10,
                          ),
                          const Spacer(),
                          const SizedBox(
                            height: 35,
                          ),
                          Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "By signing, you’re agree to our ",
                                      style: textStyle144,
                                    ),
                                    InkWell(
                                        onTap: () {},
                                        child: Text(
                                          "Terms & Conditions",
                                          style: textStyle146,
                                        ))
                                  ],
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "and ",
                                      style: textStyle144,
                                    ),
                                    InkWell(
                                        onTap: () {},
                                        child: Text(
                                          "Privacy Policy",
                                          style: textStyle146,
                                        ))
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 35,
                          ),
                          Center(
                              child: Text(
                            "Copyright © 2022",
                            style: textStyle134,
                          )),
                          const SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ));
  }
}
