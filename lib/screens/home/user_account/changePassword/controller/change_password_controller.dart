import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangePasswordController extends GetxController {
  final GlobalKey<FormState> enterEmailChangePasswordFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> enterNewPasswordFormKey = GlobalKey<FormState>();
  TextEditingController emailChangePasswordController = TextEditingController();
  TextEditingController enterPasswordChangeController = TextEditingController();
  TextEditingController confirmPasswordChangeController = TextEditingController();

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