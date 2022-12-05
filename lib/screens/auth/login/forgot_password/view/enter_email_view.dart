import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategy_bank_app/reusable_widgets/reusableTextFields.dart';
import 'package:strategy_bank_app/reusable_widgets/reusable_button.dart';
import '../../../../../gen/assets.gen.dart';
import '../../../../../reusable_widgets/reusable_alertDialog.dart';
import '../../../../../utils/text_styles/textstyles.dart';
import '../controller/forgotPasswordController.dart';
import 'enter_otp_view.dart';

class EnterEmailScreen extends StatelessWidget {
  const EnterEmailScreen({Key? key}) : super(key: key);

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
                          key: forgotPasswordController.forgotPasswordFormKey,
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
                                "Forgot Password?",
                                style: logInHeaderTextStyle,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Don’t worry, we all forget. Please enter the\nmail associated with your account below.",
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
                                      forgotPasswordController.emailController,
                                  hintText: "Enter Email",
                                  labelText: "Email"),
                              const SizedBox(
                                height: 15,
                              ),
                              ReusableButton(
                                  onPressFunction: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return CustomAlertDialog(
                                            onPressFunction: () {
                                              Get.to(
                                                  () => const EnterOtpScreen());
                                            },
                                            buttonText: 'Okay',
                                            contentText:
                                                'A password reset link has been sent\nto your email',
                                            headerText: 'Ready',
                                          );
                                        });
                                  },
                                  stringText: "Send Via Email"),
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
