import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(AnimatedContainerApp());

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
        body: Center(
          child: AnimatedContainer(
            color: _color,
            duration: Duration(seconds: 1),
            child: GestureDetector(
              onTap:() {
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
        ) ,
      ),
    );
  }
}
