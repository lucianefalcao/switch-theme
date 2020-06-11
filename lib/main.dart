import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:switch_theme/change_theme.dart';
import 'package:switch_theme/screens/home.dart';

void main() => runApp(ChangeTheme(child: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Switch Theme',
      theme: ChangeTheme.of(context).theme,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Home(),
      ),
    );
  }
}
