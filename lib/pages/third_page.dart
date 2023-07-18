import 'dart:math';

import 'package:flutter/material.dart';
import 'package:navigation/widgets/custom_button_widget.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  // Gerência de estado sem package (Nativa, com ValueNotifier)

  ValueNotifier<int> valorAleatorio = ValueNotifier<int>(0);

  random() async {
    for (int i = 0; i < 10; i++) {
      await Future.delayed(const Duration(seconds: 1));
      valorAleatorio.value = Random().nextInt(1000);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ValueListenableBuilder(
              valueListenable: valorAleatorio,
              builder: (_, value, __) => Text(
                'Valor é: $value',
                style: const TextStyle(fontSize: 20),
              ),
            ),
            CustomButtonWidget(
              onPressed: () => random(),
              title: 'Custom Button',
            ),
          ],
        ),
      ),
    );
  }
}
