import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

ThemeData lightTheme() => ThemeData(
      scaffoldBackgroundColor: Colors.white,
      primaryColor: const Color(0xFF613EEA),
      accentColor: const Color(0xFFFF7D00),
      fontFamily: GoogleFonts.sarabun().fontFamily,
      textTheme: TextTheme(
        headline1: TextStyle(
          color: Colors.black,
        ),
        headline6: TextStyle(
            color: purple,
            fontWeight: FontWeight.w600,
            fontSize: 15,
            letterSpacing: .6),
        bodyText1:
            TextStyle(color: black, fontSize: 16, fontWeight: FontWeight.w600),
        bodyText2: TextStyle(
            color: black,
            fontWeight: FontWeight.w500,
            fontSize: 14,
            letterSpacing: .4),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actionsIconTheme: IconThemeData(
          color: purple,
          size: 24,
        ),
        titleTextStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
        iconTheme: IconThemeData(
          color: purple,
          size: 24,
        ),
      ),
    );
