import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() reiniciarQuestionario;

  const Resultado(this.pontuacao, this.reiniciarQuestionario, {super.key});

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabens';
    } else if (pontuacao < 12) {
      return 'voce é bom';
    } else if (pontuacao < 16) {
      return 'impressionante';
    } else {
      return 'nivel jedi!!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Text(
          fraseResultado,
          style: TextStyle(fontSize: 28),
        )),
        ElevatedButton(
          onPressed: reiniciarQuestionario,
          child: Text('Reiniciar'),

          style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0), // Bordas arredondadas
          )
        )
        )
      ],
    );
  }
}
