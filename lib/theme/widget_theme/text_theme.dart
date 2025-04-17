
import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class KTextTheme {
  KTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    displayLarge: GoogleFonts.poppins(
      color: kBlackColor,
      fontSize: 20,
      //fontWeight: bold,
    ),
    displayMedium: GoogleFonts.nunito(
      color: kBlackColor,
      fontSize: 18,
      fontWeight: medium,
    ),
    displaySmall: GoogleFonts.poppins(
      color: kGreyColor,
      fontSize: 12,
      fontWeight: regular,
    ),
    bodyLarge: GoogleFonts.poppins(
      color: kBlackColor,
      fontSize: 14,
      fontWeight: regular,
    ),
    bodyMedium: GoogleFonts.nunito(
      color: kBlackColor,
      fontSize: 12,
     // fontWeight: regular,
    ),
  );

  static TextTheme darlkTextTheme = TextTheme(
    displayLarge: GoogleFonts.poppins(
      color: kWhiteColor,
      fontSize: 20,
      fontWeight: bold,
    ),
    displayMedium: GoogleFonts.poppins(
      color: kWhiteColor,
      fontSize: 18,
      fontWeight: medium,
    ),
    displaySmall: GoogleFonts.poppins(
      color: kWhiteColor,
      fontSize: 16,
      fontWeight: semiBold,
    ),
    bodyLarge: GoogleFonts.poppins(
      color: kWhiteColor,
      fontSize: 12,
      fontWeight: semiBold,
    ),
    bodyMedium: GoogleFonts.nunito(
      color: kWhiteColor,
      fontSize: 4,
      fontWeight: regular,
    ),
  );
}
