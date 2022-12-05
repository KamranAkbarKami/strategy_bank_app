// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategy_bank_app/reusable_widgets/reusableTextFields.dart';
import 'package:strategy_bank_app/reusable_widgets/reusable_button.dart';
import 'package:strategy_bank_app/screens/auth/login/sign_in/view/sign_in_view.dart';
import '../../../../../gen/assets.gen.dart';
import '../../../../../utils/text_styles/textstyles.dart';
import '../controller/forgotPasswordController.dart';

class ChooseNewPasswordScreen extends StatelessWidget {
  const ChooseNewPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size mediaSize = MediaQuery.of(context).size;
    Orientation mediaOrientation = MediaQuery.of(context).orientation;
    return Scaffold(
        body: GetBuilder<ForgotPasswordController>(
            init: ForgotPasswordController(),
            builder: (forgotPasswordController) {
              return SafeArea(
                child: Container(
                  height: mediaSize.height * 1,
                  width: mediaSize.width * 1,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: CustomScrollView(
                    slivers: [
                      SliverFillRemaining(
                        hasScrollBody: false,
                        child: Form(
                          key: forgotPasswordController.enterNewPasswordFormKey,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              ReusableRoundBackButton(onPressFunction: () {
                                Get.back();
                              }),
                              mediaOrientation == Orientation.portrait
                                  ? const SizedBox(
                                      height: 100,
                                    )
                                  : const SizedBox(
                                      height: 20,
                                    ),
                              Text(
                                "Choose a new Password",
                                style: logInHeaderTextStyle,
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              TCustomPasswordTextField(
                                  obscureText: forgotPasswordController
                                      .obscureTextFieldOne,
                                  viewHidePasswordFunction: () {
                                    forgotPasswordController
                                        .viewHidePasswordFunctionOne();
                                  },
                                  iconAssetName: Assets.formImages.passwordIcon,
                                  validatorFunction: (value) {
                                    if (value!.isEmpty) {
                                      return "Email can not be Empty";
                                    } else {
                                      return null;
                                    }
                                  },
                                  textEditingController:
                                      forgotPasswordController
                                          .enterPasswordController,
                                  hintText: "Enter New Password",
                                  labelText: "Enter New Password"),
                              const SizedBox(
                                height: 15,
                              ),
                              TCustomPasswordTextField(
                                  obscureText: forgotPasswordController
                                      .obscureTextFieldTwo,
                                  viewHidePasswordFunction: () {
                                    forgotPasswordController
                                        .viewHidePasswordFunctionTwo();
                                  },
                                  iconAssetName: Assets.formImages.passwordIcon,
                                  validatorFunction: (value) {
                                    if (value!.isEmpty) {
                                      return "Password can not be Empty";
                                    } else {
                                      return null;
                                    }
                                  },
                                  textEditingController:
                                      forgotPasswordController
                                          .confirmPasswordController,
                                  hintText: "Confirm Password ",
                                  labelText: "Confirm Password"),
                              const SizedBox(
                                height: 20,
                              ),
                              ReusableButton(
                                  onPressFunction: () {},
                                  stringText: "Save Password"),
                              const SizedBox(
                                height: 25,
                              ),
                              Center(
                                  child: TextButton(
                                      onPressed: () {
                                        Get.offAll(() => SignInView());
                                      },
                                      child: Text(
                                        "Back to Login",
                                        style: textStyle166,
                                      ))),
                              const Spacer(),
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
                        ),
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}
