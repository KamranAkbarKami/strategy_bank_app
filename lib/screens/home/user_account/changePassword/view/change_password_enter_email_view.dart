// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategy_bank_app/reusable_widgets/reusable_appbar.dart';
import 'package:strategy_bank_app/screens/home/user_account/changePassword/view/check_email_view.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../../reusable_widgets/reusableTextFields.dart';
import '../../../../../reusable_widgets/reusable_bottom_appbar.dart';
import '../../../../../reusable_widgets/reusable_button.dart';
import '../../../../../utils/text_styles/textstyles.dart';
import '../../../../auth/login/forgot_password/view/enter_email_view.dart';
import '../components/change_password_controller.dart';

class ChangePasswordView extends StatelessWidget {
  const ChangePasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size mediaSize = MediaQuery.of(context).size;
    Orientation mediaOrientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: ReusableAppBar(
        onPressFunction: () {
          Get.back();
        },
        titleText: 'Change Password',
      ),
      bottomNavigationBar: CustomBottomAppBar(selectedIndex: 3),
      body: GetBuilder<ChangePasswordController>(
        init: ChangePasswordController(),
        builder: (changePasswordController) {
          return Container(
            height: mediaSize.height * 1,
            width: mediaSize.width * 1,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Form(
                    key: changePasswordController
                        .enterEmailChangePasswordFormKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Enter the email associated with your account\nand we’ll send an email with instructions to\nreset your password",
                          style: alertDialogContentTextStyle,
                          textAlign: TextAlign.justify,
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        TCustomTextField(
                            validatorFunction: (value) {
                              if (value!.isEmpty) {
                                return "Email can not be Empty";
                              } else {
                                return null;
                              }
                            },
                            iconAssetName: Assets.formImages.emailIcon,
                            textEditingController: changePasswordController
                                .emailChangePasswordController,
                            hintText: "Enter Email",
                            labelText: "Email"),
                        const SizedBox(
                          height: 15,
                        ),
                        ReusableButton(
                            onPressFunction: () {
                              Get.to(() => const CheckEmailView());
                            },
                            stringText: "Send Instructions"),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
