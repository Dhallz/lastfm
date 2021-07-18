import 'package:flutter/material.dart';

// Utils
const double kIconButtonWidth = 48;

// Colors

const Color kDarkGrey = Color(0xFF636363);
const Color kMidGrey = Color(0xFF909090);
const Color kLightGrey = Color(0xFFD9D9D9);
const Color kSubtleGrey = Color(0xFFF2F2F2);
const Color kGreenStatus = Color(0xFF59B761);
const Color kDarkGreenStatus = Color(0xFF00a10d);
const Color kOrangeStatus = Color(0xFFFFAF54);
const Color kDarkOrangeStatus = Color(0xFFFFBB00);
const Color kRedStatus = Color(0xFFCF2833);
const Color kYellowStatus = Color(0xFFE9E063);

// Fonts

// Font Families
const String kFontRoboto = 'Roboto';
const String kFontRobotoBold = 'RobotoBold';
const String kFontRobotoCondensedBold = 'RobotoCondensedBold';

// TextStyles

double defaultWhiteOpacity = 0.8;

const TextStyle kTitleStyle = TextStyle(
  fontSize: 26,
  fontFamily: kFontRoboto,
  fontWeight: FontWeight.bold,
);

const TextStyle kSubTitleStyle = TextStyle(
  fontSize: 20,
  fontFamily: kFontRobotoCondensedBold,
);

const TextStyle kTextStyle = TextStyle(
  fontSize: 14,
  fontFamily: kFontRoboto,
);

const TextStyle kTextSmallStyle = TextStyle(
  fontSize: 13,
  fontFamily: kFontRoboto,
);

const TextStyle kSubTextItalic = TextStyle(
  fontSize: 12,
  fontFamily: kFontRoboto,
  fontStyle: FontStyle.italic,
  color: kMidGrey,
);
