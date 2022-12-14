
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../gen/assets.gen.dart';
import '../utils/colors/colors.dart';
import '../utils/text_styles/textstyles.dart';

class CountryDropDownWithIcon extends StatefulWidget {
  String prefixIconString, hintString;


  CountryDropDownWithIcon(
      {Key? key, required this.prefixIconString, required this.hintString})
      : super(key: key);

  @override
  State<CountryDropDownWithIcon> createState() =>
      _CountryDropDownWithIconState();
}

class _CountryDropDownWithIconState extends State<CountryDropDownWithIcon> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      iconSize: 0,
      decoration: InputDecoration(
        filled: true,
        fillColor: cWhiteAccentColorThree,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide.none,
        ),
        prefixIcon: Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: SvgPicture.asset(
            widget.prefixIconString,
            color: cGreyColor,
          ),
        ),
        suffixIcon: Container(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: SvgPicture.asset(
              Assets.formImages.iosDownwardIcon,
            )),
      ),

      dropdownColor: cWhiteAccentColorThree,
      style: formTextStyle,
      hint: Text(widget.hintString),
      items: <String>['A', 'B', 'C', 'D'].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (_) {},
    );
  }
}