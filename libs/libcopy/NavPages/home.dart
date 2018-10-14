import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './countdown.dart';

class Home extends StatelessWidget {

  Home(this.listType);
  final String listType;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new FlipClockPage(),
          ],
        ),
      ),
    );
  }
}