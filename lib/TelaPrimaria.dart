import 'dart:math';

import 'package:cara_coroa/Resultado.dart';
import 'package:flutter/material.dart';

class Jogar extends StatefulWidget {
  @override
  _JogarState createState() => _JogarState();
}

class _JogarState extends State<Jogar> {
  void _exibirResultado() {
    var _imagemApp = AssetImage("images/logo.png");

    //Para ligacao com os numeros aleatorios.
    var opcaoImagem = ["cara", "coroa"];
    //Gerando numeros aleatorios.
    int numeroAleatorio = Random().nextInt(opcaoImagem.length);
    var escolhaFinal = opcaoImagem[numeroAleatorio];

    Navigator.push(context,
        MaterialPageRoute(builder: (context) => Resultado(escolhaFinal)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Utiliza-se preimeiro o prefixo 0xff - Color(0xff ),
      //Com opacidade - Color.fromRGBO(r, g, b, opacity) // (255, 204, 128, 0.8),
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("images/logo.png"),
            GestureDetector(
              onTap: _exibirResultado,
              child: Image.asset("images/botao_jogar.png"),
            )
          ],
        ),
      ),
    );
  }
}
