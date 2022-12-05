import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationViewController extends GetxController {
  bool obscureText = true;
  final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  viewHidePasswordFunction() {
    obscureText = !obscureText;
    update();
  }
}
