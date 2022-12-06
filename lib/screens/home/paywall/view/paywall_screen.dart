import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:strategy_bank_app/utils/colors/colors.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../../reusable_widgets/reusable_button.dart';
import '../../../../../utils/text_styles/textstyles.dart';
import '../../../../models/paywall_model.dart';
import '../component/paywall_components.dart';

class PayWallScreen extends StatelessWidget {
  const PayWallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size mediaSize = MediaQuery.of(context).size;
    Orientation mediaOrientation = MediaQuery.of(context).orientation;
    return Scaffold(
        body: SafeArea(
            child: Container(
      height: mediaSize.height * 1,
      width: mediaSize.width * 1,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 120,
              width: 120,
              decoration: const BoxDecoration(
                  color: cWhiteAccentColorThree, shape: BoxShape.circle),
              child: Center(
                child: SvgPicture.asset(
                  Assets.paywall.paywallIcon,
                  height: 50,
                  width: 50,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Choose your plan",
              style: logInHeaderTextStyle,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit.",
              style: alertDialogContentTextStyle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 15),
            Flexible(
                child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(height: 15),
                    itemCount: payWallPlanList.length,
                    itemBuilder: (context, index) {
                      return PayWallPlans(
                          planPrice: payWallPlanList[index].planPrice,
                          planDescription:
                              payWallPlanList[index].planDescription,
                          planSpan: payWallPlanList[index].planSpan,
                          isBestPrice: payWallPlanList[index].isBestPrice);
                    })),
            const SizedBox(
              height: 125,
            ),
            ReusableButton(onPressFunction: () {}, stringText: "Sign Up"),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                "Cancel Anytime",
                style: textStyle166,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    )));
  }
}
