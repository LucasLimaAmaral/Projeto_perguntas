import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;

  const Resposta(this.texto, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
              onPressed:null,
              child: Text(texto)
      ),
    );
  }
}