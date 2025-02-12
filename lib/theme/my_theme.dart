import 'package:flutter/material.dart';

class MyTheme{
   static const lightPrimaryColor = Color(0xffB7935F);
   static const darkPrimaryColor =Color(0xff141A2E);

   static const lightSecondaryColor =Color(0xffB7935F);
   static const darkSecondaryColor =Color(0xffFACC1D);

   static const lightMainTextColor =Color(0xff242424);
   static const darkMainTextColor =Color(0xffF8F8F8);

  static var lightTheme = ThemeData(
    colorScheme: const ColorScheme.light(secondary:lightPrimaryColor ,primary: lightPrimaryColor,surfaceContainerLow: Color(0xffF8F8F8)  ),
    textTheme:const TextTheme(titleLarge:TextStyle(fontSize: 30,color: lightMainTextColor,fontWeight: FontWeight.bold),
    bodyMedium: TextStyle(fontSize: 25,color: lightMainTextColor)) ,
    scaffoldBackgroundColor: Colors.transparent,
    progressIndicatorTheme:const ProgressIndicatorThemeData(color: lightPrimaryColor),
    appBarTheme:const AppBarTheme(
        backgroundColor: Colors.transparent,

        titleTextStyle: TextStyle(fontSize: 30,color: lightMainTextColor,fontWeight: FontWeight.bold),
        centerTitle: true
    ),
    bottomNavigationBarTheme:const BottomNavigationBarThemeData(
        backgroundColor:lightMainTextColor,selectedItemColor: lightMainTextColor,unselectedItemColor: Colors.white    ),
  );
  static var darkTheme =ThemeData(
    colorScheme: const ColorScheme.dark(secondary:darkSecondaryColor ,primary: darkPrimaryColor ,
        surfaceContainerLow:darkPrimaryColor,),
    scaffoldBackgroundColor: Colors.transparent,
    progressIndicatorTheme:const ProgressIndicatorThemeData(color: darkPrimaryColor),
    textTheme:const TextTheme(titleLarge:TextStyle(fontSize: 30,color: darkMainTextColor,fontWeight: FontWeight.bold),
        bodyMedium: TextStyle(fontSize: 25,color: darkMainTextColor)) ,

    appBarTheme:const AppBarTheme(
        backgroundColor: Colors.transparent,

        titleTextStyle: TextStyle(fontSize: 30,color:darkMainTextColor,fontWeight: FontWeight.bold),
        centerTitle: true
    ),
    bottomNavigationBarTheme:const BottomNavigationBarThemeData(
        backgroundColor: darkPrimaryColor,selectedItemColor:darkSecondaryColor ,unselectedItemColor:darkMainTextColor
    ),
  );
  static var mode= ThemeMode.dark;
}