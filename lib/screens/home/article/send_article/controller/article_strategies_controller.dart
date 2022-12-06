import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ArticleStrategiesController extends GetxController {
  TextEditingController commentController= TextEditingController();
  int selectedIndex = 0;

  toggleAddStrategies() {
    selectedIndex = 0;
    update();
  }
  toggleSendReviews() {
    selectedIndex = 1;
    update();
  }
}
