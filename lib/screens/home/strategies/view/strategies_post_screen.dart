import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:strategy_bank_app/screens/home/home_page/view/home_page_view.dart';
import 'package:strategy_bank_app/screens/home/strategies/view/articallFilter.dart';
import 'package:strategy_bank_app/utils/colors/colors.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../models/strategiesModel.dart';
import '../../../../reusable_widgets/reusable_bottom_appbar.dart';
import '../../../../reusable_widgets/reusable_button.dart';
import '../../article/send_article/view/article_strategies.dart';
import '../controller/strategies_controller.dart';

class StrategiesPostScreen extends StatefulWidget {
  final StrategiesModel strategiesModel;

  StrategiesPostScreen({Key? key, required this.strategiesModel})
      : super(key: key);

  @override
  State<StrategiesPostScreen> createState() => _StrategiesPostScreenState();
}

class _StrategiesPostScreenState extends State<StrategiesPostScreen> {
  final controller = Get.put(StrategiesController());
  var rating = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomAppBar(selectedIndex: 1),
      body: GetBuilder<StrategiesController>(
        init: StrategiesController(),
        builder: (strategiesController) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 420,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage(widget.strategiesModel.articleImage),
                          fit: BoxFit.fill)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            buildIconContainer(
                                icon: InkWell(
                              onTap: () {
                                Get.back();
                              },
                              child: const Padding(
                                padding: EdgeInsets.only(left: 4),
                                child: Icon(Icons.arrow_back_ios),
                              ),
                            )),
                            buildIconContainer(
                                icon: InkWell(
                              onTap: () {
                                strategiesController.changeStatus();
                              },
                              child: strategiesController.isFavourite
                                  ? const Icon(
                                      Icons.favorite_rounded,
                                      color: cPrimaryColor,
                                    )
                                  : const Icon(
                                      Icons.favorite_border_outlined,
                                      color: cPrimaryColor,
                                    ),
                            )),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Text(
                                  "4.5",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: Colors.white),
                                ),
                                Icon(
                                  Icons.star_outline_rounded,
                                  color: Colors.white,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              widget.strategiesModel.articleTitle,
                              style: const TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            "Rating article:",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 13),
                          ),
                          const SizedBox(
                            width: 11,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xffEEF1F5),
                                borderRadius: BorderRadius.circular(360)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18.0, vertical: 10),
                              child: Row(
                                children: [
                                  const Text(
                                    "4.5",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  RatingBar(
                                    initialRating: 4.5,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    ratingWidget: RatingWidget(
                                      full: SvgPicture.asset(
                                          Assets.commonIcons.starIconFilled),
                                      half: SvgPicture.asset(
                                          Assets.commonIcons.starIconEmpty),
                                      empty: SvgPicture.asset(
                                          Assets.commonIcons.starIconEmpty),
                                    ),
                                    itemSize: 20,
                                    itemPadding: const EdgeInsets.symmetric(
                                        horizontal: 2.0),
                                    onRatingUpdate: (rating) {
                                      log(rating.toString());
                                    },
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          controller.showCalender.value =
                              !controller.showCalender.value;
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Implementation Steps",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                            Obx(
                              () => controller.showCalender.value
                                  ? SvgPicture.asset(Assets.commonIcons.arrowUp)
                                  : SvgPicture.asset(
                                      Assets.commonIcons.arrowDown),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Obx(
                        () => controller.showCalender.value
                            ? Column(
                                children: [
                                  buildRow(
                                      num: '1', text: 'Talk to your child'),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  buildRow(
                                      num: '2', text: 'Listen to his problem'),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  buildRow(
                                      num: '3',
                                      text: 'Give advice if he/she asks'),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  buildRow(
                                      num: '4',
                                      text: 'Spend more time together'),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                ],
                              )
                            : const SizedBox.shrink(),
                      ),
                      const Divider(
                        thickness: 1,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        widget.strategiesModel.articleTitle,
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff616161)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Strategy",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: const Color(0xffEEF1F5),
                            borderRadius: BorderRadius.circular(360)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 18.0, vertical: 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text(
                                "4.5",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 14),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Flexible(
                                child: RatingBar(
                                  initialRating: 4.5,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  ratingWidget: RatingWidget(
                                    full: SvgPicture.asset(
                                        Assets.commonIcons.starIconFilled),
                                    half: SvgPicture.asset(
                                        Assets.commonIcons.starIconEmpty),
                                    empty: SvgPicture.asset(
                                        Assets.commonIcons.starIconEmpty),
                                  ),
                                  itemSize: 20,
                                  itemPadding: const EdgeInsets.symmetric(
                                      horizontal: 2.0),
                                  onRatingUpdate: (rating) {
                                    log(rating.toString());
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      ReusableButton(
                        onPressFunction: () {
                          Get.to(() => ArticleStrategies(
                                toggleIndex: 1,
                              ));
                        },
                        stringText: 'Review this strategy',
                      ),
                      const SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  buildRow({required String num, required String text}) {
    return Row(
      children: [
        Container(
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(360),
            color: const Color(0xff46A09D),
          ),
          child: Center(
            child: Text(
              num,
              style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Colors.white),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: const TextStyle(
              fontWeight: FontWeight.w400, fontSize: 16, color: Colors.black),
        ),
      ],
    );
  }

  Container buildIconContainer({var icon}) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(100)),
      child: Center(
        child: IconButton(
          icon: icon,
          color: const Color(0xff46A09D),
          onPressed: () {},
        ),
      ),
    );
  }
}
