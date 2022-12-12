import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strategy_bank_app/reusable_widgets/reusableTextFields.dart';
import 'package:strategy_bank_app/screens/home/home_page/view/home_page_view.dart';
import 'package:strategy_bank_app/screens/home/strategies/view/strategies_view.dart';
import '../../../../../reusable_widgets/reusable_appbar.dart';
import '../../../../../reusable_widgets/reusable_bottom_appbar.dart';
import '../../../../../reusable_widgets/reusable_button.dart';
import '../components/favourites_view_components.dart';
import '../controller/favourites_view_controller.dart';

class FavouritesView extends StatelessWidget {
  const FavouritesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size mediaSize = MediaQuery.of(context).size;
    Orientation mediaOrientation = MediaQuery.of(context).orientation;
    return Scaffold(
        appBar: ReusableAppBar(
          titleText: 'My Favourites',
          showLeading: true,
          onPressFunction: () {
            Get.offAll(() => const HomePageView());
          },
        ),
        bottomNavigationBar: CustomBottomAppBar(selectedIndex: 2),
        body: GetBuilder<FavouritesViewController>(
            init: FavouritesViewController(),
            builder: (favouritesViewController) {
              return Container(
                height: mediaSize.height * 1,
                width: mediaSize.width * 1,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                        width: mediaSize.width * 1,
                        height: mediaSize.height * 1,
                        child: SingleChildScrollView(
                            physics: const ScrollPhysics(),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                TSearchField(
                                  textEditingController:
                                      favouritesViewController.searchController,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                favouritesViewController
                                        .favoriteStrategiesList.isEmpty
                                    ? const EmptyFavouritesComponent()
                                    : Flexible(
                                        child: ListView.separated(
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        itemCount: favouritesViewController
                                            .favoriteStrategiesList.length,
                                        separatorBuilder:
                                            (BuildContext context, int index) =>
                                                const SizedBox(
                                          height: 15,
                                        ),
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return FavouritesComponent(
                                            slideOnTapFunction: () {
                                              favouritesViewController
                                                  .removeFromFavouritesList(
                                                      itemIndex: index);
                                            },
                                            title: favouritesViewController
                                                .favoriteStrategiesList[index]
                                                .articleTitle,
                                            imageString:
                                                favouritesViewController
                                                    .favoriteStrategiesList[
                                                        index]
                                                    .articleImage,
                                          );
                                        },
                                      )),
                                const SizedBox(
                                  height: 100,
                                ),
                              ],
                            )),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ReusableButton(
                              onPressFunction: () {
                                Get.offAll(() => const StrategiesView());
                              },
                              stringText: "Explore Strategies"),
                          mediaOrientation == Orientation.portrait
                              ? const SizedBox(
                                  height: 20,
                                )
                              : const SizedBox.shrink(),
                        ],
                      ),
                    )
                  ],
                ),
              );
            }));
  }
}
