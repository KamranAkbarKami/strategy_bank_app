// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:flutter/material.dart';

import '../../../../reusable_widgets/reusable_bottom_appbar.dart';

class StrategiesView extends StatelessWidget {
  const StrategiesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log("Inside Strategies View");
    return Scaffold(
      bottomNavigationBar: CustomBottomAppBar(selectedIndex: 1),
      body: Container(),
    );
  }
}
