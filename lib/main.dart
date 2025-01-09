import 'package:flutter/material.dart';

main() => runApp(PerguntaAppKey());

class PerguntaAppKey extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    final List<String> perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',

    ]; 

    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          title: Text('Perguntas'),
        ),

        body: Column(

          children: <Widget>[

            Text(perguntas[0]),
            ElevatedButton(
              onPressed: null,
              child: Text('Resposta 1')
            )

          ],

        ),

      ),
    );
  }
}
