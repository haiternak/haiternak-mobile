import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:haiternak_mobile/configs/configs.dart';

// For App Color
const Color kPrimaryColor = Color(0xFF39A2DB);
const Color kPrimaryLightColor = Color(0xFFEEF6FC);
const Color kSecondaryColor = Color(0xFFB5B5B5);
const Color kBackgroundColor1 = Color(0xFFFFFFFF);
const Color kBackgroundColor2 = Color(0xFFF1F1F1);
const Color kAlert = Color(0xFFED6363);
const Color kSuccess = Color(0xFF28C76F);

//For Text Color
const Color kPrimaryTextColor = Color(0xFF073944);
const Color kSubtitleTextColor = Color(0xFF999A9A);

// Costum text style
TextStyle primaryTextStyle = GoogleFonts.poppins(
  color: kPrimaryTextColor,
);

TextStyle primaryLightTextStyle = GoogleFonts.poppins(
  color: kPrimaryLightColor,
);

TextStyle subtitleTextStyle = GoogleFonts.poppins(
  color: kSubtitleTextColor,
);

TextStyle purpleTextStyle = GoogleFonts.poppins(
  color: kPrimaryColor,
);

TextStyle whiteTextStyle = GoogleFonts.poppins(
  color: kBackgroundColor1,
);

TextStyle greenTextStyle = GoogleFonts.poppins(
  color: kSuccess,
);

TextStyle redTextStyle = GoogleFonts.poppins(
  color: kAlert,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;

// padding
double defaultPadding = getProperWidht(24);

// better shadow
List<BoxShadow> softShadow = [
  BoxShadow(
    color: Colors.grey.withOpacity(0.3),
    spreadRadius: 2,
    blurRadius: 4,
    offset: Offset(-2, 2), // changes position of shadow
  )
];
