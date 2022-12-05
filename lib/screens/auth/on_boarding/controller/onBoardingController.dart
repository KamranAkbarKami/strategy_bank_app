import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  int pageIndex = 0;
  PageController pageController = PageController(initialPage: 0);

  increaseIndex() {
    pageIndex = pageIndex + 1;
    update();
  }

  decreaseIndex() {
    pageIndex = pageIndex - 1;
    update();
  }

  setPageIndex({required int index}) {
    pageIndex = index;
    update();
  }

  @override
  void onClose() {
    log('dispose');
    pageController.dispose();
    super.onClose();
  }
}
