import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReUsableTextWidget extends StatelessWidget {
  String text;
  FontWeight customFontWeight;
  double customFontSize;
  Color customColor;
  TextAlign customTextAlign;

  ReUsableTextWidget(
      {Key? key, required this.text,
      required this.customFontWeight,
      required this.customFontSize,
      required this.customColor,
      required this.customTextAlign}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.inter(
          fontWeight: customFontWeight,
          fontSize: customFontSize,
          color: customColor),
      textAlign: customTextAlign,
    );
  }
}
