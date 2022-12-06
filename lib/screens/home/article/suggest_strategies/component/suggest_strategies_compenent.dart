import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/colors/colors.dart';
import '../../../../../utils/text_styles/textstyles.dart';

class SuggestTitleFormField extends StatelessWidget {
  TextEditingController textEditingController;

  SuggestTitleFormField({Key? key, required this.textEditingController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      textAlignVertical: TextAlignVertical.center,
      style: formTextStyle,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(20),
        filled: true,
        fillColor: cWhiteAccentColorThree,
        errorStyle: formErrorTextStyle,
        hintText: "Suggest Title",
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
      ),
      validator: (val) {
        return null;
      },
    );
  }
}

class SuggestionDescriptionFormField extends StatelessWidget {
  TextEditingController textEditingController;

  SuggestionDescriptionFormField(
      {Key? key, required this.textEditingController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      textAlignVertical: TextAlignVertical.center,
      style: formTextStyle,
      maxLines: 6,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(20),
        filled: true,
        fillColor: cWhiteAccentColorThree,
        errorStyle: formErrorTextStyle,
        hintText:
            "Please provide a brief explanation of your strategy and steps to implement your strategy",
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
      ),
      validator: (val) {
        return null;
      },
    );
  }
}

class SuggestCustomWidget extends StatelessWidget {
  const SuggestCustomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 65,
      height: 45,
      decoration: BoxDecoration(
          color: cWhiteAccentColorThree,
          borderRadius: BorderRadius.circular(20)),
      child: const Icon(
        Icons.question_mark_rounded,
        color: cBlackColor,
        size: 20,
      ),
    );
  }
}
