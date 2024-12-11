import 'package:flutter/material.dart';

class TextSizeSlider extends StatefulWidget {
  @override
  _TextSizeSliderState createState() => _TextSizeSliderState();
}

class _TextSizeSliderState extends State<TextSizeSlider> {
  double fontSize = 16.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Size Slider'),
      ),
      body: Center( // Centra el contenido en la pantalla
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Slider(
              value: fontSize,
              min: 10.0,
              max: 50.0,
              onChanged: (value) {
                setState(() {
                  fontSize = value;
                });
              },
            ), // Slider
            Text(
              'Texto Ajustable',
              style: TextStyle(fontSize: fontSize),
            ), // Text
          ],
        ),
      ),
    );
  }
}
