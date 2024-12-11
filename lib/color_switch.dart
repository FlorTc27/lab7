import 'package:flutter/material.dart';

class ColorSwitch extends StatefulWidget {
  @override
  State<ColorSwitch> createState() => _ColorSwitchState();
}

class _ColorSwitchState extends State<ColorSwitch> {

  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ColorSwitch'),
      ),
      backgroundColor: isOn ? Colors.deepOrangeAccent : Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Switch(
              value: isOn,
              onChanged: (value) {
                setState(() {
                  isOn = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}