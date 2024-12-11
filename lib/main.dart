import 'package:flutter/material.dart';
import 'package:lab7/color_switch.dart';
import 'package:lab7/real_time_text_field.dart';
import 'package:lab7/show_hide_text.dart';
import 'package:lab7/size_animation.dart';
import 'package:lab7/text_size_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Widgets'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.redAccent, fontSize: 24),
              ),
            ),
            ListTile(
              title: const Text('Color Switch'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ColorSwitch()),
                );
              },
            ),
            ListTile(
              title: const Text('Real Time Text Field'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RealTimeTextField()),
                );
              },
            ),
            ListTile(
              title: const Text('Show/Hide Text'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ShowHideText()),
                );
              },
            ),
            ListTile(
              title: const Text('Size Animation'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SizeAnimation()),
                );
              },
            ),
            ListTile(
              title: const Text('Text Size Slider'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TextSizeSlider()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: const Text(
          'Selecciona una opción del menú owo',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}