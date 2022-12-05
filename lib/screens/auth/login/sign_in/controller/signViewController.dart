import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignInViewController extends GetxController {
  bool obscureText = true;
  final GlobalKey<FormState> signInFormKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool rememberMe = false;
  viewHidePasswordFunction() {
    obscureText = !obscureText;
    update();
  }
  toggleCheckBoxValue({required bool checkedValue}){
    rememberMe = checkedValue;
    update();
  }
}
// userFormKey.currentState!.validate()
