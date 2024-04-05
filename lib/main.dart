import 'package:flutter/material.dart';
import 'package:wave/wave.dart';
import 'package:wave/config.dart';
import 'package:flutter_villains/villain.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Assignment 1')),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Villain(
            villainAnimation: VillainAnimation.fade(
              from: Duration(milliseconds: 0),
              to: Duration(milliseconds: 1000),
            ),
            child: WaveWidget(
              config: CustomConfig(
                gradients: [
                  [const Color.fromARGB(255, 139, 244, 54), Color.fromARGB(237, 54, 235, 244)],
                  [const Color.fromARGB(255, 108, 40, 198)!, Color(0x77E57373)],
                  [const Color.fromARGB(255, 254, 241, 221), Color.fromARGB(102, 255, 197, 110)],
                  [const Color.fromARGB(255, 157, 255, 59), Color(0x55FFEB3B)]
                ],
                durations: [35000, 19440, 10800, 6000],
                heightPercentages: [0.20, 0.23, 0.25, 0.30],
                blur: MaskFilter.blur(BlurStyle.solid, 10),
              ),
              waveAmplitude: 0,
              size: Size(double.infinity, double.infinity),
            ),
          ),
          Villain(
            villainAnimation: VillainAnimation.fromBottom(
              relativeOffset: 0.4,
              from: Duration(milliseconds: 500),
              to: Duration(milliseconds: 1000),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               Text(
                'Hello, World!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
               Text(
                'Assignment 1 application!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],)
          ),
        ],
      ),
    );
  }
}