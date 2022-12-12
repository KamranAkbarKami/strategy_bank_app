import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  int selectedIndex = 0;
  List<int> favouritesStrategiesList = [];

  TextEditingController searchFieldController = TextEditingController();

  toggleDiscover() {
    selectedIndex = 0;
    update();
    log("Discover Toggle");
  }

  toggleFavourites() {
    selectedIndex = 1;
    update();
    log("Discover Favourites");
  }

  togglePopular() {
    selectedIndex = 2;
    update();
    log("Discover Popular");
  }

  selectOrUnselectFavourite({required int strategiesIndex}) {
    if (favouritesStrategiesList.contains(strategiesIndex)) {
      favouritesStrategiesList.remove(strategiesIndex);
      update();
    } else {
      favouritesStrategiesList.add(strategiesIndex);
      update();
    }
  }
}
