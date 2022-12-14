import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../gen/assets.gen.dart';
import '../utils/colors/colors.dart';
import '../utils/text_styles/textstyles.dart';

const List<String> list = <String>[
  'Issues',
  'Issues 1',
  'Issues 2',
  'Issues 3'
];
const List<String> listTwo = <String>[
  'Behaviour',
  'Behaviour 1',
  'Behaviour 2',
  'Behaviour 3'
];

class DCustomDropdown extends StatefulWidget {
  int index;

  DCustomDropdown({Key? key, required this.index}) : super(key: key);

  @override
  State<DCustomDropdown> createState() => _DCustomDropdownState();
}

class _DCustomDropdownState extends State<DCustomDropdown> {
  String dropdownValue = list.first;
  String dropdownValueTwo = listTwo.first;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: cWhiteAccentColorThree,
          borderRadius: BorderRadius.circular(10)),
      padding:  EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: DropdownButton<String>(
        value: widget.index == 0 ? dropdownValue : dropdownValueTwo,
        dropdownColor: cWhiteAccentColorThree,
        icon: SvgPicture.asset(Assets.formImages.iosDownwardIcon),
        elevation: 16,
        style: formTextStyleOnBoarding,
        underline: Container(
          height: 0,
        ),
        isExpanded: true,
        onChanged: (String? value) {
          setState(() {
            if (widget.index == 0) {
              dropdownValue = value!;
            } else {
              dropdownValueTwo = value!;
            }
          });
        },
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        items: widget.index == 0
            ? list.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList()
            : listTwo.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
      ),
    );
  }
}

class DCustomDropDownWithIcon extends StatefulWidget {
  String prefixIconString, hintString;


  DCustomDropDownWithIcon(
      {Key? key, required this.prefixIconString, required this.hintString})
      : super(key: key);

  @override
  State<DCustomDropDownWithIcon> createState() =>
      _DCustomDropDownWithIconState();
}

class _DCustomDropDownWithIconState extends State<DCustomDropDownWithIcon> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      iconSize: 0,
      isExpanded: true,
      // menuMaxHeight: 300,
      // isDense: true,
      //please run ok not working
      alignment: Alignment.bottomCenter,
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
      items: <String>['Parent', 'Foster Parent', 'Teacher', 'Social Worker'].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (_) {},
    );
  }
}

