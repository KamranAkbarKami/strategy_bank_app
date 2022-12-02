// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:flutter/material.dart';

import '../../../../reusable_widgets/reusable_bottom_appbar.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log("Inside Home Page View");
    return Scaffold(
      bottomNavigationBar: CustomBottomAppBar(selectedIndex: 0),
      body: Container(),
    );
  }
}
