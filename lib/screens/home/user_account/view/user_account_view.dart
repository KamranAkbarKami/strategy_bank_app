// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:flutter/material.dart';

import '../../../../reusable_widgets/reusable_bottom_appbar.dart';

class UserAccountView extends StatelessWidget {
  const UserAccountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log("Inside User Account View");
    return Scaffold(
      bottomNavigationBar: CustomBottomAppBar(selectedIndex: 3),
      body: Container(),
    );
  }
}
