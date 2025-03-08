import 'package:flutter/material.dart';

const kColorPrimary = Color(0xFFF3C76F);
const kColorSecondary = Color(0xFFFFFB88C);
const kColorBg = Color(0xFF1D1D1D);
const kColorBrand = Color(0xFFF3C76F);
const kColorBgAccentDarker = Color(0xFF252526);
const kColorBgAccent = Color(0xFF2C2C2C);
const kColorBgAccent2 = Color(0xFF666666);
const kColorText = Color(0xFFEEECE8);
const kColorTextSecondary = Color(0xFF8B8B8B);
const kColorTextButton = Color(0xFF000000);
const kColorSecondaryText = Color(0xFFC4C4C4);

TextStyle heading1 = const TextStyle(
    fontSize: 24, fontWeight: FontWeight.bold, color: kColorText);

TextStyle heading2 = const TextStyle(
    fontSize: 20, fontWeight: FontWeight.w600, color: kColorText);

TextStyle bodyText = const TextStyle(
    fontSize: 14, fontWeight: FontWeight.normal, color: kColorText);

TextStyle caption = const TextStyle(
    fontSize: 12, fontWeight: FontWeight.w300, color: kColorTextSecondary);

TextStyle Rank1 = TextStyle(
    fontSize: 18, fontWeight: FontWeight.bold, color: kColorSecondary);
TextStyle Rank2 = TextStyle(fontSize: 16, color: kColorSecondary);
TextStyle Rank3 = TextStyle(fontSize: 14, color: kColorSecondary);
TextStyle Rankall = TextStyle(fontSize: 14, color: kColorText);

TextStyle customText(
    {double size = 14,
    FontWeight weight = FontWeight.normal,
    Color color = kColorText}) {
  return TextStyle(
    fontSize: size,
    fontWeight: weight,
    color: color,
  );
}
