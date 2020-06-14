import 'package:flutter/material.dart';
import 'package:switch_theme/themes.dart';

class _InheritedChangeTheme extends InheritedWidget {
  _InheritedChangeTheme({Key key, this.child, this.data})
      : super(key: key, child: child);

  final Widget child;
  final _ChangeThemeState data;

  @override
  bool updateShouldNotify(_InheritedChangeTheme oldWidget) {
    return true;
  }
}

class ChangeTheme extends StatefulWidget {
  ChangeTheme({Key key, this.child}) : super(key: key);

  final Widget child;

  @override
  _ChangeThemeState createState() => _ChangeThemeState();

  static _ChangeThemeState of(BuildContext context) {
    _InheritedChangeTheme inherited =
        context.dependOnInheritedWidgetOfExactType<_InheritedChangeTheme>();
    return inherited.data;
  }
}

class _ChangeThemeState extends State<ChangeTheme> {

  ThemeData _theme;

  ThemeData get theme => _theme;

  @override
  void initState() {
    _theme = Themes.light;
    super.initState();
  }

  changeTheme(ThemeData themeData) {
    setState(() {
      _theme = themeData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _InheritedChangeTheme(
        data: this,
        child: widget.child,
      ),
    );
  }
}
