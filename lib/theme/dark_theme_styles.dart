import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      primarySwatch: Colors.red,
      primaryColor: isDarkTheme ? Colors.black : Colors.white,
      textTheme: TextTheme(
          headlineLarge: GoogleFonts.inter(
              color: isDarkTheme ? Colors.white : Colors.black), 
          headlineMedium: GoogleFonts.inter(
              color: isDarkTheme ? Colors.white : Colors.black),
          headlineSmall: GoogleFonts.inter(
              color: isDarkTheme ? Colors.white : Colors.black),
          bodyLarge: GoogleFonts.inter(
              color: isDarkTheme ? Colors.white.withOpacity(.7) : Colors.black.withOpacity(.7),),
          bodyMedium: GoogleFonts.inter(
              color: isDarkTheme ? Colors.black: Colors.white,),
              ),
      colorScheme: ColorScheme.dark(
          background: isDarkTheme ? Color(0xff1e1e1e) : Color(0xffF1F5FB),
          brightness: isDarkTheme ? Brightness.dark : Brightness.light),
      indicatorColor: isDarkTheme ? Color(0xff0E1D36) : Color(0xffCBDCF8),
      hintColor: isDarkTheme ? Color(0xff280C0B) : Color(0xffEECED3),
      highlightColor: isDarkTheme ? Color(0xff372901) : Color(0xffFCE192),
      hoverColor: isDarkTheme ? Color(0xff3A3A3B) : Color(0xff4285F4),
      focusColor: isDarkTheme ? Color(0xff0B2512) : Color(0xffA8DAB5),
      disabledColor: Colors.grey,
      cardColor: isDarkTheme ? Color(0xFF151515) : Colors.white,
      canvasColor: isDarkTheme ? Color(0xff383838) : Colors.white,
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      buttonTheme: Theme.of(context).buttonTheme.copyWith(
          colorScheme: isDarkTheme ? ColorScheme.dark() : ColorScheme.light()),
      textSelectionTheme: TextSelectionThemeData(
          selectionColor: isDarkTheme ? Colors.white : Colors.black),
    );
  }
}
