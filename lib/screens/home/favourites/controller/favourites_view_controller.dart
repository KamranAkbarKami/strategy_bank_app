import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../models/strategiesModel.dart';

class FavouritesViewController extends GetxController {
  List<StrategiesModel> favoriteStrategiesList = strategiesList;
  TextEditingController searchController = TextEditingController();

  removeFromFavouritesList({required int itemIndex}) {
    favoriteStrategiesList.removeAt(itemIndex);
    update();
  }
}
