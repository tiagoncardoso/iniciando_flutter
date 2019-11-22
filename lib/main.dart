import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Frases de Santo Agostinho'),
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
    'Milagres não são contrários à natureza, mas apenas contrários ao que nós sabemos sobre a natureza.',
    'Se não podes entender, crê para que entendas. A fé precede, o intelecto segue.',
    'Foi o orgulho que transformou anjos em demônios, mas é a humildade que faz de homens anjos.',
    'O mundo é um livro, e quem fica sentado em casa lê somente uma página.',
    'Creio para compreender, e compreendo para crer melhor.',
    'Ser cristão não é conquistar Cristo, mas deixar-se conquistar por Ele. Deixa que Ele conquiste em ti, que Ele conquiste para ti, que Ele te conquiste.',
    'Na essência somos iguais, nas diferenças nos respeitamos.',
    'No amor do próximo o pobre é rico; sem amor do próximo o rico é pobre.',
    'Se o homem soubesse as vantagens de ser bom, seria homem de bem por egoísmo.',
    'Há homens que se agarram a sua opinião, não por ser verdadeira, mas simplesmente por ser sua.'
  ];

  void _incrementCounter() {
    setState(() {
      _numeroAleatorio = new Random().nextInt(10);
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
              'Santo Agostinho disse:',
            ),
            Text(
              _frases[_numeroAleatorio],
              style: Theme.of(context).textTheme.caption,
              textAlign: TextAlign.center
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Gera nova frase',
        child: Icon(Icons.cached),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
