import 'dart:math';

import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({Key? key}) : super(key: key);

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
  double _width = 50;

  double _height = 50;

  Color _color = Colors.red;

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(20);

  void cambiarEs() {
    final rn = Random();
    _width = rn.nextInt(300).toDouble() + 50;
    _height = rn.nextInt(300).toDouble() + 50;
    _color =
        Color.fromRGBO(rn.nextInt(255), rn.nextInt(255), rn.nextInt(255), 1);
    _borderRadius = BorderRadius.circular(rn.nextInt(100).toDouble() + 50);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimationScreen'),
      ),
      body: Center(
        child: AnimatedContainer(
          curve: Curves.easeInCubic,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ),
          duration: const Duration(milliseconds: 400),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: cambiarEs,
        child: const Icon(Icons.play_arrow_sharp),
      ),
    );
  }
}
