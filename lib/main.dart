import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeStateful()
  ));
}

class HomeStateful extends StatefulWidget {
  @override
  _HomeStatefulState createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {
  var _tit = 'Fake buki';
  var _titulo = '';
  List<String> _desenho = [
    'images/bêia.png',
    'images/patin.png'
  ];
  List<String> _frase = [
    'Normalmente as oportunidades estão disfarçadas de trabalho duro, é por isso que a maioria das pessoas não as reconhecem.',
    'Embora ninguém possa voltar atrás e fazer um novo começo, qualquer um pode começar agora e fazer um novo fim.'
  ];
  var _idx = 0;

  @override
  Widget build(BuildContext context) {
    if (_idx == 0) {
      _titulo = _tit + ' :)';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(_titulo),
        backgroundColor: Colors.indigo,
      ),
      body: Container(
          padding: EdgeInsets.fromLTRB(20, 40, 20, 10),
          decoration: BoxDecoration(
              border:Border.all(
                  width: 1,
                  color: Colors.white
              ),
              color: Colors.blue
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: (
                    Text(
                      _frase[_idx],
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.amber,
                          decoration: TextDecoration.none
                      ),
                      textAlign: TextAlign.center,
                    )
                ),
              ),
              FlatButton(
                padding: EdgeInsets.all(8.0),
                color: Colors.red,
                textColor: Colors.white,
                splashColor: Colors.redAccent,
                child: Text(
                  'Clique aqui',
                  style: TextStyle(
                    fontSize: 15,

                  ),
                ),
                onPressed: () {
                  setState(() {
                    _titulo += ' :)';

                    if (_idx == 0) {
                      _idx = 1;
                      _titulo = _tit + ' ;)';
                    } else {
                      _idx = 0;
                    }
                  });
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Image.asset(
                  _desenho[_idx],
                  fit: BoxFit.fill,
                ),
              )
            ],
          )
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.indigo,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'Ha',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
              ),
              Text(
                'ié',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
              ),
              Text(
                'ié',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
              ),
              Text(
                'Glu',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
              ),
              Text(
                'Glu',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}