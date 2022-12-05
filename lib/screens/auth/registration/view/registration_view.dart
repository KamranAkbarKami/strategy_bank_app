import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategy_bank_app/reusable_widgets/reusableTextFields.dart';
import 'package:strategy_bank_app/reusable_widgets/reusable_button.dart';
import 'package:strategy_bank_app/reusable_widgets/reuseable_dropdown.dart';
import 'package:strategy_bank_app/screens/auth/login/forgot_password/view/enter_email_view.dart';
import 'package:strategy_bank_app/screens/auth/login/sign_in/view/sign_in_view.dart';
import '../../../../../gen/assets.gen.dart';
import '../../../../../utils/text_styles/textstyles.dart';
import '../controller/registerViewController.dart';

class RegistrationView extends StatelessWidget {
  const RegistrationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size mediaSize = MediaQuery.of(context).size;
    Orientation mediaOrientation = MediaQuery.of(context).orientation;
    return Scaffold(
        body: GetBuilder<RegistrationViewController>(
            init: RegistrationViewController(),
            builder: (registrationViewController) {
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
                          key: registrationViewController.registerFormKey,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              mediaOrientation == Orientation.portrait
                                  ? const SizedBox(
                                      height: 30,
                                    )
                                  : const SizedBox(
                                      height: 15,
                                    ),
                              Text(
                                "Sign Up",
                                style: logInHeaderTextStyle,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Tell us about yourself",
                                style: alertDialogContentTextStyle,
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              TCustomTextField(
                                  validatorFunction: (value) {
                                    if (value!.isEmpty) {
                                      return "Name can not be Empty";
                                    } else {
                                      return null;
                                    }
                                  },
                                  iconAssetName: Assets.formImages.userNameIcon,
                                  textEditingController:
                                      registrationViewController
                                          .emailController,
                                  hintText: "Name",
                                  labelText: "Name"),
                              const SizedBox(
                                height: 10,
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
                                      registrationViewController
                                          .emailController,
                                  hintText: "Email",
                                  labelText: "Email"),
                              const SizedBox(
                                height: 10,
                              ),
                              TCustomPasswordTextField(
                                  obscureText:
                                      registrationViewController.obscureText,
                                  viewHidePasswordFunction: () {
                                    registrationViewController
                                        .viewHidePasswordFunction();
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
                                      registrationViewController
                                          .passwordController,
                                  hintText: "Password",
                                  labelText: "Password"),
                              const SizedBox(
                                height: 10,
                              ),
                              DCustomDropDownWithIcon(
                                  prefixIconString:
                                      Assets.formImages.countryIcon,
                                  hintString: "Country"),
                              const SizedBox(
                                height: 10,
                              ),
                              DCustomDropDownWithIcon(
                                  prefixIconString:
                                      Assets.formImages.userTypeIcon,
                                  hintString: "User Type"),
                              const SizedBox(
                                height: 15,
                              ),
                              ReusableButton(
                                  onPressFunction: () {},
                                  stringText: "Create An Account"),
                              const SizedBox(
                                height: 30,
                              ),
                              const Spacer(),
                              Center(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "Have an account ?",
                                      style: textStyle144,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          Get.offAll(() => const SignInView());
                                        },
                                        child: Text(
                                          "Log In",
                                          style: textStyle146,
                                        ))
                                  ],
                                ),
                              ),
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
                        ),
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}
