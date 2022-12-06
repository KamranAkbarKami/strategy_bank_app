import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:strategy_bank_app/utils/colors/colors.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../../reusable_widgets/reusable_appbar.dart';
import '../../../../../reusable_widgets/reusable_bottom_appbar.dart';
import '../../../../../reusable_widgets/reusable_button.dart';
import '../../../../../utils/text_styles/textstyles.dart';
import 'change_password_enter_email_view.dart';
import 'enter_change_new_password_view.dart';

class CheckEmailView extends StatelessWidget {
  const CheckEmailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size mediaSize = MediaQuery.of(context).size;
    Orientation mediaOrientation = MediaQuery.of(context).orientation;
    return Scaffold(
        appBar: ReusableAppBar(
          titleText: 'Change Password',
          showLeading: false,
        ),
        bottomNavigationBar: CustomBottomAppBar(selectedIndex: 3),
        body: Container(
          height: mediaSize.height * 1,
          width: mediaSize.width * 1,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const Spacer(),
                    Container(
                      height: 120,
                      width: 120,
                      decoration: const BoxDecoration(
                          color: cWhiteAccentColorThree,
                          shape: BoxShape.circle),
                      child: Center(
                        child: SvgPicture.asset(
                          Assets.changePassword.changePasswordEmailIcon,
                          height: 50,
                          width: 50,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Check Your Email",
                      style: logInHeaderTextStyle,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "We have sent a password recovery\nemail with instructions",
                      style: alertDialogContentTextStyle,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    ReusableButton(
                        onPressFunction: () {
                          Get.to(() => const ChangeNewPasswordScreen());
                        },
                        stringText: "Open Email App"),
                    const Spacer(),
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Did not receive email? Check your spam filter,",
                            style: textStyle144,
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "or",
                                style: textStyle144,
                              ),
                              InkWell(
                                  onTap: () {
                                    Get.offAll(
                                        () => const ChangePasswordView());
                                  },
                                  child: Text(
                                    " try another Email Address",
                                    style: textStyle146,
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
