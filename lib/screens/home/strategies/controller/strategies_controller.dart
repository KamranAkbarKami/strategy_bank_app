import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class StrategiesController extends GetxController {
  bool isFavourite = false;
  TextEditingController searchFieldController = TextEditingController();
  var collapse = true.obs;
  var showCalender = false.obs;
  RxList<int> favouritesStrategiesList = (List<int>.of([])).obs;
  bool searchValueEntered = false;

  f_collapse() {
    collapse.value = true;
  }

  cutAllTextFromForm() {
    searchFieldController.clear();
    searchValueEntered = false;
    update;
  }

  void changeStatus() {
    isFavourite = !isFavourite;
    update();
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

  searchOnChangeFunction({required String enteredValue}) {
    searchValueEntered = true;
    update;
  }
}
