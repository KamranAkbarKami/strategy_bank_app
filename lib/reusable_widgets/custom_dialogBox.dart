//ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAertDialog extends StatelessWidget {
  Function()? deleteUserFormFunction;

  CustomAertDialog({Key? key, required this.deleteUserFormFunction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      // backgroundColor: Color(CustomColors.backgroundColor),
      contentPadding: EdgeInsets.all(10),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [],
      ),
    );
  }
}
