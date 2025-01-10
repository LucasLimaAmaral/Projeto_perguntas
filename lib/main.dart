import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp>{
  
  
  var _perguntaSelecionada = 0;

  void _responder(){
    setState(() {
      _perguntaSelecionada++;
    });

    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context){
    final List<String> perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',

    ];

    final List<String> respostas = [
      'Resposta 1',
      'Resposta 2',
      'Resposta 3'
    ]; 

    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          title: Text('Perguntas'),
        ),

        body: Column(

          children: <Widget>[

            Questao(perguntas[_perguntaSelecionada]),

            Resposta(respostas[0]),

            Resposta(respostas[1]),

            Resposta(respostas[2])

          ],

        ),

      ),
    );
  }
}

class PerguntaApp extends StatefulWidget{
  const PerguntaApp({super.key});

  _PerguntaAppState createState(){
    return _PerguntaAppState();
  }
  
}
