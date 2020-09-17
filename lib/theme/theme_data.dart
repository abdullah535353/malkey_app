import 'package:flutter/material.dart';
import 'package:malkey/utils/colors.dart';

ThemeData themeData(){
  return ThemeData(
    primaryColor: GREY_COLOR,
    accentColor: White_COLOR,
    cardColor: White_COLOR,
    scaffoldBackgroundColor: GREY_COLOR,
    fontFamily: "Din",
    appBarTheme: AppBarTheme(
      color: DARK_BLUE_COLOR,
    ),
    
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: White_COLOR,
      ),
      subtitle1: TextStyle(
        fontSize:14,
        color: DARK_BLUE_COLOR
      ),
    ),
  );
}