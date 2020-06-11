import 'package:flutter/material.dart';
import 'package:switch_theme/change_theme.dart';

void change(BuildContext context, ThemeData themeData) {
    ChangeTheme.of(context).changeTheme(themeData);
}