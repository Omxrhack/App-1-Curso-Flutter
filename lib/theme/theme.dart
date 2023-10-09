import 'package:flutter/material.dart';

class TemaApp {
  static const Color colorPrincipal = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: colorPrincipal,
    appBarTheme: const AppBarTheme(
      color: colorPrincipal,
      elevation: 0,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: colorPrincipal,
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: colorPrincipal,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: colorPrincipal,
          shape: const StadiumBorder(),
          elevation: 0),
    ),
    inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(
          color: colorPrincipal,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colorPrincipal),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        )),
  );
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: colorPrincipal,
    appBarTheme: const AppBarTheme(
      color: colorPrincipal,
      elevation: 0,
    ),
  );
}
