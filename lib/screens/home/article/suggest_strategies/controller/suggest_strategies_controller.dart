import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuggestStrategiesController extends GetxController {
  final GlobalKey<FormState> suggestStrategyFormKey = GlobalKey<FormState>();
  TextEditingController suggestTitleNameController = TextEditingController();
  TextEditingController suggestStrategyController = TextEditingController();
}
