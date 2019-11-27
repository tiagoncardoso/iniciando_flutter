import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Frase do dia',
    home: Container(
      padding: EdgeInsets.fromLTRB(20, 40, 20, 10),
      decoration: BoxDecoration(
          border:Border.all(
            width: 3,
            color: Colors.red
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
                  'Normalmente as oportunidades estão disfarçadas de trabalho duro, é por isso que a maioria das pessoas não as reconhecem.',
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
              /**/
            },
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Image.asset(
              'images/bêia.png',
              fit: BoxFit.fill,
            ),
          )
        ],
      )
    )
  ));
}