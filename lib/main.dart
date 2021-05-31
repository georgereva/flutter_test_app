import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainerApp();
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
        body: GestureDetector(
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
          child: Center(
            child: AnimatedContainer(
              color: _color,
              width: double.infinity,
              height: double.infinity,
              duration: Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              alignment: Alignment.center,
              child: Text("Hey there"),
            ),
          ),
        ),
      ),
    );
  }
}
