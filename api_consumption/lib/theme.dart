import 'package:api_consumption/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,

      // SCAFFOLD AND APPBAR EDITING
      scaffoldBackgroundColor: MyColors.white,
      appBarTheme: AppBarTheme(
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: MyColors.orange,
          ),
          elevation: 0,
          backgroundColor: MyColors.white,
          titleTextStyle: GoogleFonts.poppins(
            fontSize: 24.0,
            fontWeight: FontWeight.w700,
            color: MyColors.orange,
          )),

      // TAB BAR EDITING
      tabBarTheme: TabBarTheme(
        labelPadding: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        indicator: const BoxDecoration(
          color: Colors.transparent,
        ),
        labelColor: MyColors.orange,
        unselectedLabelColor: MyColors.grey,
        unselectedLabelStyle: GoogleFonts.poppins(
          fontSize: 18.0,
          fontWeight: FontWeight.w500,
        ),
        labelStyle: GoogleFonts.poppins(
          fontSize: 18.0,
          fontWeight: FontWeight.w500,
        ),
      ),

      // TEXT EDITING
      textTheme: TextTheme(
          bodyText1: GoogleFonts.poppins(
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
            color: MyColors.grey,
          ),
          bodyText2: GoogleFonts.poppins(
            fontSize: 20.0,
            fontWeight: FontWeight.w700,
            color: MyColors.orange,
          ),
          headline1: GoogleFonts.poppins(
            fontSize: 24.0,
            fontWeight: FontWeight.w700,
            color: MyColors.black,
          )),

      // SWITCH EDITING
      switchTheme: SwitchThemeData(
        trackColor: MaterialStateProperty.all(Colors.transparent),
        thumbColor: MaterialStateProperty.all(Colors.grey),
      ),
    );
  }

  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,

      // SCAFFOLD AND APPBAR EDITING
      scaffoldBackgroundColor: MyColors.black,
      appBarTheme: AppBarTheme(
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: MyColors.orange,
          ),
          elevation: 0,
          backgroundColor: MyColors.black,
          titleTextStyle: GoogleFonts.poppins(
            fontSize: 24.0,
            fontWeight: FontWeight.w700,
            color: MyColors.orange,
          )),

      // TAB BAR EDITING
      tabBarTheme: TabBarTheme(
        labelPadding: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        indicator: const BoxDecoration(
          color: Colors.transparent,
        ),
        labelColor: MyColors.orange,
        unselectedLabelColor: MyColors.grey,
        unselectedLabelStyle: GoogleFonts.poppins(
          fontSize: 18.0,
          fontWeight: FontWeight.w500,
        ),
        labelStyle: GoogleFonts.poppins(
          fontSize: 18.0,
          fontWeight: FontWeight.w500,
        ),
      ),

      // TEXT EDITING
      textTheme: TextTheme(
          bodyText1: GoogleFonts.poppins(
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
            color: MyColors.white,
          ),
          bodyText2: GoogleFonts.poppins(
            fontSize: 20.0,
            fontWeight: FontWeight.w700,
            color: MyColors.orange,
          ),
          headline1: GoogleFonts.poppins(
            fontSize: 24.0,
            fontWeight: FontWeight.w700,
            color: MyColors.white,
          )),

      // SWITCH EDITING
      switchTheme: SwitchThemeData(
        trackColor: MaterialStateProperty.all(Colors.transparent),
        thumbColor: MaterialStateProperty.all(Colors.grey),
      ),
    );
  }
}
