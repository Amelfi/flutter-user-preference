import 'package:flutter/material.dart';


class LightTheme{
  static const  Color primary = Colors.blueAccent;
  
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(
      backgroundColor: primary,
      iconTheme: IconThemeData( color: Colors.white),
      titleTextStyle: TextStyle(color: Colors.white),
      centerTitle:true,
    )
  );

}
