import 'package:flutter/material.dart';
import 'package:onenightfit_mobile/screens/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OneNightFit',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFF350039),
          secondary: Color(0xFFA10EAF)
        ),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}


