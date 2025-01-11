import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;

  const Resultado(this.pontuacao, {super.key});

  String get fraseResultado{
    if(pontuacao<8){
      return 'Parabens';
    }else if(pontuacao <12){
      return 'voce é bom';
    }else if( pontuacao<16){
      return 'impressionante';
    }else{
      return 'nivel jedi!!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
          fraseResultado,
          style: TextStyle(fontSize: 28),
        )
    );
  }
}
