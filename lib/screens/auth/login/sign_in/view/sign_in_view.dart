import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategy_bank_app/reusable_widgets/reusableTextFields.dart';
import 'package:strategy_bank_app/reusable_widgets/reusable_button.dart';
import 'package:strategy_bank_app/screens/auth/login/forgot_password/view/enter_email_view.dart';
import '../../../../../gen/assets.gen.dart';
import '../../../../../utils/colors/colors.dart';
import '../../../../../utils/text_styles/textstyles.dart';
import '../../../registration/view/registration_view.dart';
import '../controller/signViewController.dart';

class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size mediaSize = MediaQuery.of(context).size;
    Orientation mediaOrientation = MediaQuery.of(context).orientation;
    return Scaffold(
        body: GetBuilder<SignInViewController>(
            init: SignInViewController(),
            builder: (signInViewController) {
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
                          key: signInViewController.signInFormKey,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              mediaOrientation == Orientation.portrait
                                  ? const SizedBox(
                                      height: 130,
                                    )
                                  : const SizedBox.shrink(),
                              Text(
                                "Hello Again",
                                style: logInHeaderTextStyle,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Please log in to continue using our strategies",
                                style: alertDialogContentTextStyle,
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              TCustomTextField(
                                  validatorFunction: (value) {
                                    if (value!.isEmpty) {
                                      return "User Name can not be Empty";
                                    } else {
                                      return null;
                                    }
                                  },
                                  iconAssetName: Assets.formImages.emailIcon,
                                  textEditingController:
                                      signInViewController.emailController,
                                  hintText: "Enter Email",
                                  labelText: "Email"),
                              const SizedBox(
                                height: 10,
                              ),
                              TCustomPasswordTextField(
                                  obscureText: signInViewController.obscureText,
                                  viewHidePasswordFunction: () {
                                    signInViewController
                                        .viewHidePasswordFunction();
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
                                      signInViewController.passwordController,
                                  hintText: "Enter Password",
                                  labelText: "Password"),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Checkbox(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          side: const BorderSide(
                                              color: cGreyColor),
                                          fillColor: MaterialStateProperty.all(
                                              cWhiteAccentColorThree),
                                          checkColor: cGreyColor,
                                          overlayColor:
                                              MaterialStateProperty.all(
                                                  cWhiteAccentColorThree),
                                          value:
                                              signInViewController.rememberMe,
                                          onChanged: (value) {
                                            signInViewController
                                                .toggleCheckBoxValue(
                                                    checkedValue: value!);
                                          }),
                                      Text(
                                        "Remember Me",
                                        style: textStyle134,
                                      ),
                                    ],
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        Get.to(() => const EnterEmailScreen());
                                      },
                                      child: Text(
                                        "Forgot Password",
                                        style: textStyle136,
                                      ))
                                ],
                              ),
                              const Spacer(),
                              ReusableButton(
                                  onPressFunction: () {}, stringText: "Log In"),
                              const SizedBox(
                                height: 30,
                              ),
                              Center(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "Don't have an account",
                                      style: textStyle144,
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          Get.to(
                                              () => const RegistrationView());
                                        },
                                        child: Text(
                                          "Sign Up",
                                          style: textStyle146,
                                        ))
                                  ],
                                ),
                              ),
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
