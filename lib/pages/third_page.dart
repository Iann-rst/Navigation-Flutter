import 'package:flutter/material.dart';
import 'package:navigation/widgets/custom_button_widget.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomButtonWidget(
          onPressed: () {},
          title: 'Custom Button',
        ),
      ),
    );
  }
}
