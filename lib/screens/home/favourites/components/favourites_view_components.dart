import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../utils/colors/colors.dart';
import '../../../../utils/text_styles/textstyles.dart';

class EmptyFavouritesComponent extends StatelessWidget {
  const EmptyFavouritesComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Orientation mediaOrientation = MediaQuery.of(context).orientation;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        mediaOrientation == Orientation.portrait
            ? const SizedBox(
                height: 100,
              )
            : const SizedBox(
                height: 20,
              ),
        Container(
          height: 120,
          width: 120,
          decoration: const BoxDecoration(
              color: cWhiteAccentColorThree, shape: BoxShape.circle),
          child: Center(
            child: SvgPicture.asset(
              Assets.favourites.favouritesEmptyIcon,
              height: 50,
              width: 50,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "You have no favourites\nselected",
          style: logInHeaderTextStyle,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "Explore articles and add them to favourites",
          style: alertDialogContentTextStyle,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 100,
        ),
      ],
    );
  }
}

class FavouritesComponent extends StatelessWidget {
  Function()? slideOnTapFunction;
  String imageString;
  String title;

  FavouritesComponent(
      {Key? key,
      required this.slideOnTapFunction,
      required this.imageString,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: const ValueKey(0),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                width: 30,
              ),
              InkWell(
                onTap: slideOnTapFunction,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  height: 130,
                  width: 80,
                  decoration: BoxDecoration(
                    color: cWhiteAccentColorThree,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Spacer(),
                      SvgPicture.asset(
                        Assets.favourites.deleteFavouriteIcon,
                        height: 24,
                        width: 24,
                      ),
                      const Spacer(),
                      Text(
                        "Delete",
                        style: textStyle146Grey,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      child: Container(
        height: 130,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
          color: cWhiteAccentColorThree,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imageString,
              height: 110,
              width: 110,
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  title,
                  style: textStyle166,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
