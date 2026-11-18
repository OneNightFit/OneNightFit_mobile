import 'package:flutter/material.dart';
import 'package:onenightfit_mobile/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0x400646),
          secondary: Color(0xA10EAF)
        ),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}


