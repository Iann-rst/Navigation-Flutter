import 'package:flutter/material.dart';

class TwoPage extends StatelessWidget {
  /* 
  * Receber parâmetros entre as rotas, pode ser feita via construtor
  * Para rotas nomeadas, deve passar o parâmetro via "arguments" 
  * e a rota que receber deve pegar através do ModalRoute
  */

  const TwoPage({super.key});

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Voltar para page anterior: $args'),
        ),
      ),
    );
  }
}
