import 'package:flutter/material.dart';

class OnePage extends StatelessWidget {
  const OnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/twoPage', arguments: 'Home');
        },
        child: const Text('Ir para a segunda Page'),
      ),
    ));
  }
}
