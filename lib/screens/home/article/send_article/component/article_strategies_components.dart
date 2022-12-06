import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../../models/strategiesModel.dart';
import '../../../../../utils/colors/colors.dart';
import '../../../../../utils/text_styles/textstyles.dart';

/*Toggle Buttons*/
class ToggleScreenButtonComponent extends StatelessWidget {
  Function()? addStrategiesFunction, sendReviewsFunction;
  int selectedIndex;

  ToggleScreenButtonComponent(
      {Key? key,
      required this.addStrategiesFunction,
      required this.sendReviewsFunction,
      required this.selectedIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size mediaSize = MediaQuery.of(context).size;
    Orientation mediaOrientation = MediaQuery.of(context).orientation;
    return Container(
      height: 60,
      width: mediaSize.width,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
          color: cWhiteAccentColorThree,
          borderRadius: BorderRadius.circular(60)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
              child: GestureDetector(
            onTap: addStrategiesFunction,
            child: Container(
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: selectedIndex == 0
                      ? cPrimaryColor
                      : cWhiteAccentColorThree,
                  borderRadius: BorderRadius.circular(60)),
              child: Text(
                "Add Strategies",
                style: TextStyle(
                    fontFamily: "San Francisco",
                    color: selectedIndex == 0 ? cWhiteColor : cBlackColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
            ),
          )),
          Expanded(
              child: GestureDetector(
            onTap: sendReviewsFunction,
            child: Container(
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: selectedIndex == 1
                      ? cPrimaryColor
                      : cWhiteAccentColorThree,
                  borderRadius: BorderRadius.circular(60)),
              child: Text(
                "Send Reviews",
                style: TextStyle(
                    fontFamily: "San Francisco",
                    color: selectedIndex == 1 ? cWhiteColor : cBlackColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ))
        ],
      ),
    );
  }
}

//Add Strategies
class AddStrategiesComponent extends StatelessWidget {
  StrategiesModel strategiesModel;

  AddStrategiesComponent({Key? key, required this.strategiesModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
            strategiesModel.articleImage,
            height: 110,
            width: 110,
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: Text(
                      strategiesModel.articleTitle,
                      style: textStyle166,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                        alignment: Alignment.center,
                        height: 30,
                        decoration: BoxDecoration(
                            color: cBlackColor,
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          "Trauma",
                          style: addStrategiesType,
                        ),
                      ),
                      const Spacer(),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "10 min",
                            style: addStrategiesDuration,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            padding: const EdgeInsets.all(2),
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: cPrimaryColor),
                            child: const Icon(
                              Icons.menu_book_rounded,
                              color: cWhiteColor,
                              size: 20,
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
/*
Send Reviews Component
*/

class SendReviewsWidget extends StatelessWidget {
  TextEditingController commentController;

  SendReviewsWidget({Key? key, required this.commentController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("What would you rate this a strategy?", style: textStyle166),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Expanded(child: RateCustomWidget()),
              SizedBox(
                width: 5,
              ),
              Expanded(child: RateCustomWidget()),
              SizedBox(
                width: 5,
              ),
              Expanded(child: RateCustomWidget()),
              SizedBox(
                width: 5,
              ),
              Expanded(child: RateCustomWidget()),
              SizedBox(
                width: 5,
              ),
              Expanded(child: RateCustomWidget()),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Text("Did you like the strategy?", style: textStyle166),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 60,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  Assets.user.emojiSad,
                  height: 50,
                  width: 50,
                ),
                const SizedBox(
                  width: 5,
                ),
                SvgPicture.asset(
                  Assets.user.emojiNeutral,
                  height: 50,
                  width: 50,
                ),
                const SizedBox(
                  width: 5,
                ),
                SvgPicture.asset(
                  Assets.user.emojiSmiling,
                  height: 50,
                  width: 50,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text("Comment", style: textStyle166),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: commentController,
            textAlignVertical: TextAlignVertical.center,
            style: formTextStyle,
            maxLines: 6,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(20),
              filled: true,
              fillColor: cWhiteAccentColorThree,
              errorStyle: formErrorTextStyle,
              hintText: "Enter Your Comment Here",
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide.none,
              ),
            ),
            validator: (val) {
              return null;
            },
          )
        ],
      ),
    );
  }
}

class RateCustomWidget extends StatelessWidget {
  const RateCustomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 65,
      height: 45,
      decoration: BoxDecoration(
          color: cWhiteAccentColorThree,
          borderRadius: BorderRadius.circular(20)),
      child: const Icon(
        Icons.star_border_rounded,
        color: cGreyColor,
        size: 30,
      ),
    );
  }
}
