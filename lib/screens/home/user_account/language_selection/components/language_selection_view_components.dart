import 'package:flutter/material.dart';

import '../../../../../utils/colors/colors.dart';
import '../../../../../utils/text_styles/textstyles.dart';

class LanguageTile extends StatelessWidget {
  int index;
  int selectedIndex;
  String languageTitle;
  Function()? selectFunction;

  LanguageTile(
      {Key? key,
      required this.index,
      required this.selectedIndex,
      required this.languageTitle,
      required this.selectFunction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectFunction,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        height: 56,
        width: MediaQuery.of(context).size.width * 1,
        decoration: BoxDecoration(
            color:
                index == selectedIndex ? cPrimaryColor : cWhiteAccentColorThree,
            borderRadius: BorderRadius.circular(12)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              languageTitle,
              style: index == selectedIndex
                  ? selectedLanguageStyle
                  : unselectedLanguageStyle,
            ),
            const Spacer(),
            index == selectedIndex
                ? const Icon(
                    Icons.check_rounded,
                    color: cWhiteColor,
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
