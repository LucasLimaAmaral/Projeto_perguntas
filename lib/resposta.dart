import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;

  final void Function() onSelection;

  const Resposta(this.texto, this.onSelection, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      child: ElevatedButton(
        onPressed: onSelection,
        
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0), // Bordas arredondadas
          )
        ),
        child: Text(texto),
        
      ),
    );
  }
}