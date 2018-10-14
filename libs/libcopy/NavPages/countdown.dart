import 'package:flip_panel/flip_panel.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';


var berlinWallFell = new DateTime.utc(2018, DateTime.october, 24);
var dDay = new DateTime.now();
Duration difference = berlinWallFell.difference(dDay);
var time = difference.inHours.toString()+":"+difference.inMinutes.toString()+":"+difference.inSeconds.toString();
class FlipClockPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Card(
        child:
        Container(
            padding: const EdgeInsets.only(top:70.0,bottom: 70.0),
          color: Colors.white,
            child: Center(
              child:

              FlipClock.simple(
                startTime: DateTime.now(),

         digitColor: Colors.blue,
                backgroundColor: Colors.white,
                digitSize: 40.0,
                borderRadius: const BorderRadius.all(Radius.circular(4.0)),
              ),
            )
        )
    );
  }
}