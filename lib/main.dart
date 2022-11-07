import 'package:flutter/material.dart';

import 'rootscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF0E3352),
      ),
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
