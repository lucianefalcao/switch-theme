import 'package:flutter/material.dart';
import 'package:switch_theme/change_theme.dart';
import 'package:switch_theme/themes.dart';
import 'package:switch_theme/widgets/change_helper.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              "Press the icon\n bellow to change the theme",
              textAlign: TextAlign.center,
            ),
          ),
          IconButton(
            onPressed: () {
              change(
                context,
                ChangeTheme.of(context) == Themes.light ? Themes.dark : Themes.light,
              );
              Future.delayed(Duration(milliseconds: 1000))
                  .then((value) => Navigator.pop(context));
            },
            icon: ChangeTheme.of(context) == Themes.light
                ? Icon(Icons.brightness_2)
                : Icon(Icons.brightness_6),
          ),
        ],
      ),
    );
  }
}
