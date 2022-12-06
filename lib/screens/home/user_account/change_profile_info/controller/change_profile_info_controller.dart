import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeProfileInfoController extends GetxController {
  final GlobalKey<FormState> changeProfileFormKey = GlobalKey<FormState>();
  TextEditingController changeProfileNameController = TextEditingController();
  TextEditingController changeProfileMailController = TextEditingController();
}
