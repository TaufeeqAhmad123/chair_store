
import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/widget_theme/text_theme.dart';
import 'package:google_fonts/google_fonts.dart';

Color kBlackColor = Color(0xff222222);
Color kBlackAccentColor = Color(0xff2A2B37);
Color kGreyColor = Color(0xff94959B);
Color kLineDarkColor = Color(0xffEAEAEA);
Color kWhiteGreyColor = Color.fromARGB(255, 222, 222, 226);
Color kWhiteColor = Color(0xffFFFFFF);
Color kRedColor = Color(0xffFF314A);
Color kYellowColor = Color(0xffFFBA00);
Color kBlueColor = Color(0xff2972FF);
Color kDarkBackgroundColor = Color(0xff252836);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;


class TAppTheme{
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: kWhiteGreyColor,
    useMaterial3: true,
    brightness: Brightness.light,
    cardColor: kWhiteColor,
    primaryColor: kWhiteColor,
    primaryColorLight: kWhiteColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: kWhiteGreyColor,
      selectedItemColor: kBlackColor,
      unselectedItemColor: kBlackAccentColor.withOpacity(0.5),
      selectedLabelStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: kWhiteColor,
      ),
    ),

    
    textTheme: KTextTheme.lightTextTheme,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: kBlackColor,
      secondary: kBlackAccentColor,
    ),
    iconTheme:  IconThemeData(
      color: kBlackColor,
      size: 20
    ),
  );

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: kDarkBackgroundColor,
   // useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: kWhiteColor,
    cardColor: kBlackColor,
     primaryColorLight: kBlackColor,
    textTheme: KTextTheme.darlkTextTheme,
    iconTheme:  IconThemeData(
      color: kWhiteColor,
      size: 20
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: kBlackColor,
      selectedItemColor: kWhiteColor,
      unselectedItemColor: kWhiteColor,
      selectedLabelStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: kWhiteColor,
      ),
    ),
    
  );
}

TextStyle blackTextStyle = GoogleFonts.poppins(
  color: kBlackColor,
);

TextStyle blackAccentTextStyle = GoogleFonts.nunito(
  color: kBlackAccentColor,
);

TextStyle greyTextStyle = GoogleFonts.nunito(
  color: kGreyColor,
);

TextStyle lineDarkTextStyle = GoogleFonts.nunito(
  color: kLineDarkColor,
);

TextStyle whiteGreyTextStyle = GoogleFonts.nunito(
  color: kWhiteGreyColor,
);

TextStyle whiteTextStyle = GoogleFonts.nunito(
  color: kWhiteColor,
);

TextStyle redTextStyle = GoogleFonts.nunito(
  color: kRedColor,
);

TextStyle yellowTextStyle = GoogleFonts.nunito(
  color: kYellowColor,
);

TextStyle blueTextStyle = GoogleFonts.nunito(
  color: kBlueColor,
);
