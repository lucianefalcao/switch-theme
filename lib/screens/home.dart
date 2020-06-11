import 'package:flutter/material.dart';
import 'package:switch_theme/change_theme.dart';
import 'package:switch_theme/screens/second_screen.dart';
import 'package:switch_theme/themes.dart';
import 'package:switch_theme/widgets/change_helper.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
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
              Future.delayed(Duration(milliseconds: 1000)).then(
                (value) => Navigator.push(
                    context, MaterialPageRoute(builder: (_) => SecondScreen())),
              );
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
