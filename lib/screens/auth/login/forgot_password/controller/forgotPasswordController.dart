import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  final GlobalKey<FormState> forgotPasswordFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> otpFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> enterNewPasswordFormKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController otpController = TextEditingController();
  TextEditingController enterPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  bool obscureTextFieldOne = true;
  bool obscureTextFieldTwo = true;

  viewHidePasswordFunctionOne() {
    obscureTextFieldOne = !obscureTextFieldOne;
    update();
  }
  viewHidePasswordFunctionTwo() {
    obscureTextFieldTwo = !obscureTextFieldTwo;
    update();
  }

}
