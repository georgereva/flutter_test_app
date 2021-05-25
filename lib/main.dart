import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: BackgroundWithText(),
      ),
    );
  }
}

class BackgroundWithText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned.fill(child: AnimatedContainerApp()),
        Positioned.fill(child: CenteredText()),
      ],
    );
  }
}

class AnimatedContainerApp extends StatefulWidget {
  @override
  _AnimatedContainerAppState createState() => _AnimatedContainerAppState();
}

class _AnimatedContainerAppState extends State<AnimatedContainerApp> {
  Color _color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('George Reva Flutter App'),
        ),
        body: AnimatedContainer(
          color: _color,
          duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          child: GestureDetector(
            onTap: () {
              setState(() {
                final random = Random();

                _color = Color.fromRGBO(
                  random.nextInt(256),
                  random.nextInt(256),
                  random.nextInt(256),
                  1,
                );
              });
            },
          ),
        ),
      ),
    );
  }
}

class CenteredText extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Hey there"),
    );
  }
}