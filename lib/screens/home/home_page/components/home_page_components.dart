import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../models/strategiesModel.dart';
import '../../../../utils/colors/colors.dart';
import '../../../../utils/text_styles/textstyles.dart';

class ToggleButtonComponent extends StatelessWidget {
  Function(int?)? toggleSwitchFunction;

  ToggleButtonComponent({Key? key, required this.toggleSwitchFunction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size mediaSize = MediaQuery.of(context).size;
    Orientation mediaOrientation = MediaQuery.of(context).orientation;
    return Container(
      height: 60,
      width: mediaSize.width,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      decoration: BoxDecoration(
          color: cWhiteAccentColorThree,
          borderRadius: BorderRadius.circular(60)),
      child: ToggleSwitch(
        cornerRadius: 60.0,
        activeBgColors: const [
          [cPrimaryColor],
          [cPrimaryColor],
          [cPrimaryColor],
        ],
        customWidths: [
          mediaSize.width * 0.28,
          mediaSize.width * 0.28,
          mediaSize.width * 0.28,
        ],
        activeFgColor: Colors.white,
        inactiveBgColor: cWhiteAccentColorThree,
        inactiveFgColor: cBlackColor,
        initialLabelIndex: 0,
        totalSwitches: 3,
        customTextStyles: [toggleTextStyle, toggleTextStyle, toggleTextStyle],
        labels: const ['Discover', 'Favourites', 'Popular'],
        radiusStyle: true,
        onToggle: toggleSwitchFunction,
      ),
    );
  }
}

class TopicsComponent extends StatelessWidget {
  String topicText, imageAsset;
  Function()? onTapFunction;

  TopicsComponent(
      {Key? key,
      required this.topicText,
      required this.imageAsset,
      required this.onTapFunction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapFunction,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: AssetImage(imageAsset))),
        height: 80,
        width: 80,
        child: Text(
          topicText,
          style: textStyle166White,
        ),
      ),
    );
  }
}

class HomepageContentWidget extends StatelessWidget {
  StrategiesModel strategiesModel;
  Function()? onTapFunction;
  String difficulty;

  HomepageContentWidget(
      {Key? key,
      required this.strategiesModel,
      required this.onTapFunction,
      required this.difficulty})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapFunction,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
          color: cWhiteAccentColorThree,
          borderRadius: BorderRadius.circular(10),
        ),
        height: 290,
        width: 260,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 4,
                child: Container(
                  alignment: Alignment.topRight,
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(strategiesModel.articleImage),
                          fit: BoxFit.fill)),
                  child: Container(
                    height: 30,
                    width: 30,
                    padding: const EdgeInsets.all(2),
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: cWhiteColor),
                    child: SvgPicture.asset(
                      Assets.commonIcons.heartIcon,
                      color: cPrimaryColor,
                    ),
                  ),
                )),
            const SizedBox(
              height: 5,
            ),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                      child: Text(
                    strategiesModel.articleTitle,
                    style: textStyle166,
                  )),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "${strategiesModel.articleRating}  ",
                    style: textStyle166,
                  ),
                  SvgPicture.asset(
                    Assets.commonIcons.starIconEmpty,
                    color: cPrimaryColor,
                    height: 18,
                    width: 18,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Difficulty: ",
                    style: textStyleDifficultyHeading,
                  ),
                  Text(
                    difficulty,
                    style: unselectedLanguageStyle,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
