// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategy_bank_app/reusable_widgets/reusableTextFields.dart';
import 'package:strategy_bank_app/reusable_widgets/reusable_button.dart';
import 'package:strategy_bank_app/screens/auth/login/sign_in/view/sign_in_view.dart';
import '../../../../../gen/assets.gen.dart';
import '../../../../../reusable_widgets/reusable_appbar.dart';
import '../../../../../reusable_widgets/reusable_bottom_appbar.dart';
import '../../../../../utils/text_styles/textstyles.dart';
import '../components/change_password_controller.dart';

class ChangeNewPasswordScreen extends StatelessWidget {
  const ChangeNewPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size mediaSize = MediaQuery.of(context).size;
    Orientation mediaOrientation = MediaQuery.of(context).orientation;
    return Scaffold(
        appBar: ReusableAppBar(
          titleText: 'Password',
          showLeading: true,
        ),
        bottomNavigationBar: CustomBottomAppBar(selectedIndex: 3),
        body: GetBuilder<ChangePasswordController>(
            init: ChangePasswordController(),
            builder: (changePasswordController) {
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
                          key: changePasswordController.enterNewPasswordFormKey,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Your new password must be different from\nprevious used passwords",
                                style: alertDialogContentTextStyle,
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              TCustomPasswordTextField(
                                  obscureText: changePasswordController
                                      .obscureTextFieldOne,
                                  viewHidePasswordFunction: () {
                                    changePasswordController
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
                                      changePasswordController
                                          .emailChangePasswordController,
                                  hintText: "Enter New Password",
                                  labelText: "Password"),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Must be at least 8 characters.",
                                style: textStyle134,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TCustomPasswordTextField(
                                  obscureText: changePasswordController
                                      .obscureTextFieldTwo,
                                  viewHidePasswordFunction: () {
                                    changePasswordController
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
                                      changePasswordController
                                          .confirmPasswordChangeController,
                                  hintText: "Confirm Password ",
                                  labelText: "Confirm Password"),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Both password must match.",
                                style: textStyle134,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              ReusableButton(
                                  onPressFunction: () {},
                                  stringText: "Update Password"),
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
