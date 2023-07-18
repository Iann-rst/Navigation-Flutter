import 'package:flutter/material.dart';
import 'package:navigation/pages/one_page.dart';
import 'package:navigation/pages/third_page.dart';
import 'package:navigation/pages/two_page.dart';

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
