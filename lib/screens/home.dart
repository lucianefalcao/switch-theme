import 'package:flutter/material.dart';
import 'package:switch_theme/change_theme.dart';
import 'package:switch_theme/screens/second_screen.dart';
import 'package:switch_theme/themes.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _changeTheme(BuildContext context, ThemeData themeData) {
    ChangeTheme.of(context).changeTheme(themeData);
  }

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
            icon: Icon(
              ChangeTheme.of(context).theme == Themes.light
                  ? Icons.brightness_2
                  : Icons.brightness_6,
            ),
            onPressed: () {
              _changeTheme(
                context,
                ChangeTheme.of(context).theme == Themes.light
                    ? Themes.dark
                    : Themes.light,
              );

              Future.delayed(Duration(milliseconds: 1000)).then(
                (value) => Navigator.push(
                    context, MaterialPageRoute(builder: (_) => SecondScreen())),
              );
            },
          )
        ],
      ),
    );
  }
}
