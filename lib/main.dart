import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: MyHomePage(title: 'Frase do dia'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  int _numeroAleatorio = 0;
  List _frases = [
    'O orgulho é a fonte de todas as fraquezas, por que é a fonte de todos os vícios.',
    'A medida do amor é amar sem medida.',
    'Não há lugar para a sabedoria onde não há paciência.',
    'O supérfluo dos ricos é propriedade dos pobres.',
    'Prefiro os que me criticam, porque me corrigem, aos que me elogiam, porque me corrompem.',
    'Não basta fazer coisas boas - é preciso fazê-las bem.',
    'O mundo é um livro, e quem fica sentado em casa lê somente uma página.',
    'Não é o suplício que faz o mártir, mas a causa.',
    'Não é tanto o que fazemos, mas o motivo pelo qual fazemos que determina a bondade ou a malícia.'
  ];

  void _incrementCounter() {
    setState(() {
      _numeroAleatorio = new Random().nextInt(9);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Pressione o botão abaixo e veja sua frase:',
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(
                    text: _frases[_numeroAleatorio],
                    style: TextStyle(color: Colors.redAccent, fontSize: 20, fontFamily: 'Rochester'),
                  )
                ]
              )
              //'${_frases[_numeroAleatorio]}',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Gera frase aleatória',
        child: Icon(Icons.autorenew),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
