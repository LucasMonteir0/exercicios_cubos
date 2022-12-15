import 'package:api_consumption/config/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTheme {
  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,

      // SCAFFOLD AND APPBAR EDITING
      scaffoldBackgroundColor: MyColors.white,
      appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: MyColors.orange,
          ),
          elevation: 0,
          backgroundColor: MyColors.white,
          titleTextStyle: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.w700,
            color: MyColors.orange,
          )),

      // TAB BAR EDITING
      tabBarTheme: const TabBarTheme(
        labelPadding: EdgeInsets.symmetric(
          vertical: 10,
        ),
        indicator: BoxDecoration(
          color: Colors.transparent,
        ),
        labelColor: MyColors.orange,
        unselectedLabelColor: MyColors.grey,
        unselectedLabelStyle: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w500,
        ),
        labelStyle: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w500,
        ),
      ),

      // TEXT EDITING
      textTheme: const TextTheme(
        bodyText1: TextStyle(fontSize: 14.0),
      ),

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
        appBarTheme: const AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: MyColors.orange,
            ),
            elevation: 0,
            backgroundColor: MyColors.black,
            titleTextStyle: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w700,
              color: MyColors.orange,
            )),

        // TAB BAR EDITING
        tabBarTheme: const TabBarTheme(
          labelPadding: EdgeInsets.symmetric(
            vertical: 10,
          ),
          indicator: BoxDecoration(
            color: Colors.transparent,
          ),
          labelColor: MyColors.orange,
          unselectedLabelColor: MyColors.grey,
          unselectedLabelStyle: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
          ),
          labelStyle: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
          ),
        ),

        // TEXT EDITING
        textTheme: const TextTheme(
          bodyText1: TextStyle(fontSize: 14.0),
        ),

        // SWITCH EDITING
        switchTheme: SwitchThemeData(
          trackColor: MaterialStateProperty.all(Colors.transparent),
          thumbColor: MaterialStateProperty.all(Colors.grey),
        ));
  }
}
