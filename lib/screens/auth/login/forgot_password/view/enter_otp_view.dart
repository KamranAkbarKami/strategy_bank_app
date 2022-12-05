import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategy_bank_app/reusable_widgets/reusableTextFields.dart';
import 'package:strategy_bank_app/reusable_widgets/reusable_button.dart';
import 'package:strategy_bank_app/screens/auth/login/forgot_password/view/choose_new_password_view.dart';
import '../../../../../gen/assets.gen.dart';
import '../../../../../reusable_widgets/reusable_alertDialog.dart';
import '../../../../../utils/text_styles/textstyles.dart';
import '../controller/forgotPasswordController.dart';

class EnterOtpScreen extends StatelessWidget {
  const EnterOtpScreen({Key? key}) : super(key: key);

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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: CustomScrollView(
                    slivers: [
                      SliverFillRemaining(
                        hasScrollBody: false,
                        child: Form(
                          key: forgotPasswordController.otpFormKey,
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
                                "Enter Code",
                                style: logInHeaderTextStyle,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "A 4 digit code has been send to\nalex@gmail.com",
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
                                  textEditingController:
                                      forgotPasswordController.otpController,
                                  hintText: "Enter Email",
                                  labelText: "Email"),
                              const SizedBox(
                                height: 15,
                              ),
                              ReusableButton(
                                  onPressFunction: () {
                                    Get.to(
                                        () => const ChooseNewPasswordScreen());
                                  },
                                  stringText: "Continue"),
                              const Spacer(),
                              const SizedBox(
                                height: 30,
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
                        ),
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}
