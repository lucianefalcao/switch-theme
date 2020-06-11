import 'package:flutter/material.dart';

class Themes {
  static final ThemeData _light = ThemeData(
    primaryColor: Colors.amber,
    brightness: Brightness.light,
  );

  static final ThemeData _dark = ThemeData(
    primaryColor: Colors.redAccent,
    brightness: Brightness.dark,
  );

  static get light => _light;
  static get dark => _dark;
}