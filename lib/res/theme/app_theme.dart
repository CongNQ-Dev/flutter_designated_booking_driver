import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../style.dart';

enum AppTheme { LIGHT, DARK }

final appThemeData = {
  AppTheme.LIGHT: ThemeData(
      primaryColor: colorF20606,
      primaryColorDark: colorF20606,
      primaryColorLight: colorF20606,
      scaffoldBackgroundColor: colorWhite,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      textTheme: createTextTheme(),
      fontFamily: FontFamily,
      brightness: Brightness.light,
      useMaterial3: true,
      appBarTheme: const AppBarTheme(
        color: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: colorPrimary, background: colorWhite),
      bottomAppBarTheme: const BottomAppBarTheme(color: colorWhite)),
  AppTheme.DARK: ThemeData(
      brightness: Brightness.dark,
      primaryColor: colorPrimary,
      scaffoldBackgroundColor: colorWhite,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      textTheme: createTextTheme(),
      fontFamily: FontFamily,
      useMaterial3: true,
      appBarTheme: const AppBarTheme(
        color: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      bottomAppBarTheme: const BottomAppBarTheme(color: colorWhite)),
};
