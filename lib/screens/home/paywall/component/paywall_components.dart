import 'package:flutter/material.dart';

import '../../../../utils/colors/colors.dart';
import '../../../../utils/text_styles/textstyles.dart';

class PayWallPlans extends StatelessWidget {
  String planPrice;
  String planSpan;
  String planDescription;
  bool isBestPrice;

  PayWallPlans(
      {Key? key,
      required this.planPrice,
      required this.planDescription,
      required this.planSpan,
      required this.isBestPrice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width * 1,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: cWhiteAccentColorThree),
      child: Stack(
        children: [
          Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(width: 10),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                        color: cWhiteColor, shape: BoxShape.circle),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "\$$planPrice / $planSpan ",
                        style: textStyle166,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        planDescription,
                        style: alertDialogContentTextStyle,
                      ),
                    ],
                  ),
                ],
              )),
          isBestPrice
              ? Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    alignment: Alignment.center,
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    height: 26,
                    width: 100,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10.0),
                      ),
                      color: cRedColor,
                    ),
                    child: const Text("Best Price",
                        style: TextStyle(
                            fontFamily: "San Francisco",
                            color: cWhiteColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w400)),
                  ),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
