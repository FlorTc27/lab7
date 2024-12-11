import 'package:flutter/material.dart';

class RealTimeTextField extends StatefulWidget {
  @override
  _RealTimeTextFieldState createState() => _RealTimeTextFieldState();
}

class _RealTimeTextFieldState extends State<RealTimeTextField> {
  String text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Real Time Text Field'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            onChanged: (value) {
              setState(() {
                text = value;
              });
            },
          ), // TextField
          Text('Escribiste: $text'),
        ],
      ),
    );
  }
}
