import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ArticleStrategiesController extends GetxController {
  TextEditingController commentController = TextEditingController();
  late int selectedIndex = 0;

  ArticleStrategiesController({required this.selectedIndex});

  toggleAddStrategies() {
    selectedIndex = 0;
    update();
  }

  toggleSendReviews() {
    selectedIndex = 1;
    update();
  }
}
