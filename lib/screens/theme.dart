import 'package:flutter/material.dart';
import 'package:untitled1/constants.dart';

ThemeData theme()
{
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Muli",
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    inputDecorationTheme:inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
InputDecorationTheme inputDecorationTheme()
{
    OutlineInputBorder outlineInputBorder =OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: BorderSide(color: KTextColor),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(horizontal: 42,vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}
TextTheme textTheme(){
  return TextTheme(
    bodyText1: TextStyle(color: KTextColor),
    bodyText2: TextStyle(color: KTextColor),
  );
}
AppBarTheme appBarTheme(){
  return  AppBarTheme(
    color: Colors.white,
    elevation: 0,
    brightness: Brightness.light,
    iconTheme: IconThemeData(
      color: Colors.black),
    textTheme: TextTheme(
        headline6:TextStyle(color: Color(0xFF8B8B8B),fontSize: 1)
    ),
  );
}