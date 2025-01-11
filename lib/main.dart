import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';
import './resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp>{
  
  final _perguntas = const[
      {
        'texto': 'Qual é a sua cor favorita?',
        'respostas' : ['Preto', 'Vermelho', 'Verde', 'Branco'],
      },
      {
        'texto': 'Qual é seu animal favorito?',
        'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão'],
      },
      {
        'texto': 'Qual é seu instrutor favorito?',
        'respostas': ['Maria', 'Joao', 'Leo', 'Pedro'],
      },

    ];
  
  var _perguntaSelecionada = 0;

  void _responder(){

    if(temPerguntaSelecionada){
      setState(() {
        _perguntaSelecionada++;
      });
    }
    
  }

  bool get temPerguntaSelecionada{
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context){
    

    List<String> respostas = temPerguntaSelecionada 
    ? _perguntas[_perguntaSelecionada]['respostas'] as List<String> 
    : [];

    List<Widget> widgets = respostas.map((t) => Resposta(t, _responder)).toList();

    return MaterialApp(
      home: Scaffold(
        
        appBar: AppBar(
          title: Text('Perguntas'),
          centerTitle: true,
          backgroundColor: Colors.blue,

          titleTextStyle: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
          
        ),

        body: temPerguntaSelecionada ? Column(

          children: <Widget>[

            Questao(_perguntas[_perguntaSelecionada]['texto'].toString()),

            ...widgets,

          ],

        ) 
        : Resultado(),

      ),
    );
  }
}

class PerguntaApp extends StatefulWidget{
  const PerguntaApp({super.key});

  @override
  _PerguntaAppState createState(){
    return _PerguntaAppState();
  }
  
}
