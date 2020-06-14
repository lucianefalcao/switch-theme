import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Center(
              child: Text("Works here too"),
            ),
          ],
        ),
      ),
    );
  }
}
