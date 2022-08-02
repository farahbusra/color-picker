import 'package:color_app/shades_page.dart';
import 'package:color_app/shades_withParams.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';
import 'color_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomepage(),
      routes: {
        '/shades': (context) => ShadesWithParams(),
        '/picker': (context) => ColorPicker(),
      },
    );
  }
}


