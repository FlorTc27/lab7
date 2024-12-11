import 'package:flutter/material.dart';

class ShowHideText extends StatefulWidget {
  @override
  _ShowHideTextState createState() => _ShowHideTextState();
}

class _ShowHideTextState extends State<ShowHideText> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Show/Hide Text'),
      ),
      body: Center( // Centra el contenido en la pantalla
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
              value: isVisible,
              onChanged: (bool? value) {
                setState(() {
                  isVisible = value!;
                });
              },
            ), // Checkbox
            if (isVisible) Text('Texto visible'),
          ],
        ),
      ),
    );
  }
}
