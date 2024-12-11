import 'package:flutter/material.dart';

class SizeAnimation extends StatefulWidget {
  @override
  _SizeAnimationState createState() => _SizeAnimationState();
}

class _SizeAnimationState extends State<SizeAnimation> {
  double width = 100;
  double height = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Size Animation'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              width = width == 100 ? 200 : 100;
              height = height == 100 ? 200 : 100;
            });
          },
          child: AnimatedContainer(
            duration: Duration(seconds: 3),
            width: width,
            height: height,
            color: Colors.pinkAccent,
          ),
        ),
      ),
    );
  }
}
