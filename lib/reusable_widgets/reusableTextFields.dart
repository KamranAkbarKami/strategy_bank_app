// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../gen/assets.gen.dart';
import '../utils/colors/colors.dart';
import '../utils/text_styles/textstyles.dart';

class TCustomPasswordTextField extends StatelessWidget {
  String labelText, hintText, iconAssetName;
  String? Function(String?)? validatorFunction;
  bool obscureText;
  TextEditingController textEditingController;
  void Function()? viewHidePasswordFunction;

  TCustomPasswordTextField(
      {Key? key,
      required this.iconAssetName,
      required this.hintText,
      required this.labelText,
      required this.validatorFunction,
      required this.obscureText,
      required this.textEditingController,
      required this.viewHidePasswordFunction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      textAlignVertical: TextAlignVertical.center,
      obscureText: obscureText,
      style: formTextStyle,
      decoration: InputDecoration(
        filled: true,
        fillColor: cWhiteAccentColorThree,
        labelStyle: formTextStyle,
        labelText: labelText,
        errorStyle: formErrorTextStyle,
        hintText: hintText,
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide.none,
        ),
        prefixIcon: Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: SvgPicture.asset(
            iconAssetName,
            width: 24,
            height: 24,
            color: cGreyColor,
          ),
        ),
        suffixIcon: Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: IconButton(
            onPressed: viewHidePasswordFunction,
            icon: SvgPicture.asset(
              obscureText
                  ? Assets.formImages.passwordNonVisible
                  : Assets.formImages.passwordVisible,
              color: cGreyColor,
            ),
          ),
        ),
      ),
      validator: validatorFunction,
    );
  }
}

class TCustomTextField extends StatelessWidget {
  String? Function(String?)? validatorFunction;
  TextEditingController textEditingController;
  String labelText, hintText, iconAssetName;

  TCustomTextField(
      {Key? key,
      required this.iconAssetName,
      required this.validatorFunction,
      required this.textEditingController,
      required this.hintText,
      required this.labelText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      textAlignVertical: TextAlignVertical.center,
      style: formTextStyle,
      decoration: InputDecoration(
        filled: true,
        fillColor: cWhiteAccentColorThree,
        labelStyle: formTextStyle,
        labelText: labelText,
        errorStyle: formErrorTextStyle,
        hintText: hintText,
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide.none,
        ),
        prefixIcon: Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: SvgPicture.asset(
            iconAssetName,
            width: 24,
            height: 24,
            color: cGreyColor,
          ),
        ),
      ),
      validator: validatorFunction,
    );
  }
}

class TSearchField extends StatelessWidget {
  TextEditingController textEditingController;

  TSearchField({
    Key? key,
    required this.textEditingController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      textAlignVertical: TextAlignVertical.center,
      textAlign: TextAlign.left,
      style: formTextStyle,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        filled: true,
        fillColor: cWhiteColor,
        labelStyle: formTextStyle,
        errorStyle: formErrorTextStyle,
        hintText: "Search Behaviours",
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(width: 0.2, color: cGreyColor),
        ),
        suffixIcon: Container(
          padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 14),
          child: SvgPicture.asset(
            Assets.favourites.searchIcon,
            width: 20,
            height: 20,
            color: cPrimaryColor,
          ),
        ),
      ),
    );
  }
}

class TStrategySearchField extends StatelessWidget {
  TextEditingController textEditingController;
  Function() cutAllTextFunction;
  Function(String)? onChangeFunction;
  TStrategySearchField({
    Key? key,
    required this.cutAllTextFunction,
    required this.textEditingController,
    required this.onChangeFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      textAlignVertical: TextAlignVertical.center,
      style: formTextStyle,
      decoration: InputDecoration(
        filled: true,
        fillColor: cWhiteColor,
        labelStyle: formTextStyle,
        errorStyle: formErrorTextStyle,
        hintText: "Search Behaviours",
        contentPadding: const EdgeInsets.symmetric(horizontal: 10),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(width: 0.2, color: cGreyColor),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.all(12),
          child: Container(
              height: 10,
              width: 10,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: cGreyColor),
              child: InkWell(
                onTap: cutAllTextFunction,
                child: const Icon(
                  Icons.close_rounded,
                  color: cWhiteColor,
                  size: 20,
                ),
              )),
        ),
      ),
      onChanged: onChangeFunction,
    );
  }
}
