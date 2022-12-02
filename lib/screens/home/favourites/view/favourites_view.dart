// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:flutter/material.dart';

import '../../../../reusable_widgets/reusable_bottom_appbar.dart';

class FavouritesView extends StatelessWidget {
  const FavouritesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log("Inside Favourites View");
    return Scaffold(
      bottomNavigationBar: CustomBottomAppBar(selectedIndex: 2),
      body: Container(),
    );
  }
}
