import 'package:flutter/material.dart';

class Themes {
  static final _light = ThemeData(
    primaryColor: Colors.red,
    brightness: Brightness.light,
  );

  static final _dark = ThemeData(
    primaryColor: Colors.amber,
    brightness: Brightness.dark,
  );

  static get light => _light;
  static get dark => _dark;
}