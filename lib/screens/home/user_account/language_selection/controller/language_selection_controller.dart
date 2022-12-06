import 'dart:developer';

import 'package:get/get.dart';

class LanguageController extends GetxController{
  int selectedIndex = 0;

  changeLanguageFunction({required int newSelectedIndex}){
    if(selectedIndex == newSelectedIndex){
      log("No New Language Selected");
    }
    else{
      selectedIndex=newSelectedIndex;
      update();
    }
  }
}