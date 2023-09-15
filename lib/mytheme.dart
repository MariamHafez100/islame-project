import 'package:flutter/material.dart';

class ProjectTheme {
  static Color primarylightmood = Color(0xffB7935F);
  static Color primarydarkmood = Color(0xff141A2E);
  static Color blacky = Color(0xff242424);
  static Color yelloo = Color(0xffFACC1D);
  static Color bej = Color(0xcdb7935f);
  static ThemeData lightmood = ThemeData(
    primaryColor: primarylightmood,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: blacky),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: blacky,
        fontSize: 30,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
      ),
    ),
    textTheme: TextTheme(
        titleMedium: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w500,
          color: blacky,
        ),
        titleLarge: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w600,
          color: blacky,
        ),
        titleSmall: TextStyle(
          fontWeight: FontWeight.w400,
          color: blacky,
          fontSize: 25,
        )),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: blacky,
      unselectedItemColor: Colors.white,
      showUnselectedLabels: true,
    ),
  );
  static ThemeData Darkmood = ThemeData(
    primaryColor: primarydarkmood,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
      ),
    ),
    textTheme: TextTheme(
        titleMedium: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w500,
          color: yelloo,
        ),
        titleLarge: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w600,
          color: yelloo,
        ),
        titleSmall: TextStyle(
          fontWeight: FontWeight.w400,
          color: yelloo,
          fontSize: 25,
        )),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: yelloo,
      unselectedItemColor: Colors.white,
      showUnselectedLabels: true,
    ),
  );
}
