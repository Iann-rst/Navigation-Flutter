import 'package:flutter/material.dart';
import 'package:navigation/views/one_page.dart';
import 'package:navigation/views/third_page.dart';
import 'package:navigation/views/two_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (_) => const OnePage(),
        '/twoPage': (_) => const TwoPage(),
        '/thirdPage': (_) => const ThirdPage(),
      },
    );
  }
}
