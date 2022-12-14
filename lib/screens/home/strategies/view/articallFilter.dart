import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../reusable_widgets/reusable_button.dart';

class ArticlesFilterScreen extends StatefulWidget {
  const ArticlesFilterScreen({Key? key}) : super(key: key);

  @override
  State<ArticlesFilterScreen> createState() => _ArticlesFilterScreenState();
}

class _ArticlesFilterScreenState extends State<ArticlesFilterScreen> {
  var rating = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: const Color(0xffEEF1F5),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.arrow_back_ios,
                                size: 15,
                                color: Color(0xff46A09D),
                              ),
                              Text(
                                "Back",
                                style: TextStyle(
                                  color: Color(0xff46A09D),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                          const Text(
                            "Filters",
                            style: TextStyle(
                              color: Color(0xff46A09D),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Strategies",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Behaviours",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Wrap(
                    runSpacing: 1,
                    children: [
                      chipData("Trauma", 0xffEEF1F5),
                      const SizedBox(
                        width: 8,
                      ),
                      chipData("Anxiety", 0xffEEF1F5),
                      const SizedBox(
                        width: 8,
                      ),
                      chipData("Feeding", 0xffEEF1F5),
                      const SizedBox(
                        width: 8,
                      ),
                      chipData("Sleeping", 0xffEEF1F5),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Rating filter",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffEEF1F5),
                        borderRadius: BorderRadius.circular(360)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18.0, vertical: 10),
                      child: RatingBar(
                        initialRating: 0,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        ratingWidget: RatingWidget(
                          full: SvgPicture.asset(
                              Assets.commonIcons.starIconFilled),
                          half: SvgPicture.asset(
                              Assets.commonIcons.starIconFilled),
                          empty: SvgPicture.asset(
                              Assets.commonIcons.starIconEmpty),
                        ),
                        itemSize: 20,
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 2.0),
                        onRatingUpdate: (rating) {
                          log(rating.toString());
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
        child: ReusableButton(
          onPressFunction: () {},
          stringText: 'Apply',
        ),
      ),
    );
  }

  Widget chipData(String label, int color) {
    return Chip(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      backgroundColor: Color(color),
      label: Text(
        label,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
      labelPadding: const EdgeInsets.symmetric(horizontal: 17, vertical: 3),
    );
  }
}
