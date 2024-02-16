import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MarimbaApp());

class MarimbaApp extends StatelessWidget {
  void tocarSom(int numeroSom) {
    final player = AudioPlayer();
    player.play(AssetSource('nota$numeroSom.wav'));
  }

  Expanded criarBotao({required Color cor, required int numeroSom}) {
    return Expanded(
      child: Container(
        color: cor,
        child:
        TextButton(
          onPressed: () {
            tocarSom(numeroSom);
          },
          child: Text(''),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              criarBotao(cor: Colors.green.shade900, numeroSom: 1),
              criarBotao(cor: Colors.blue.shade900, numeroSom: 2),
              criarBotao(cor: Colors.yellowAccent, numeroSom: 3),
              criarBotao(cor: Colors.deepOrange, numeroSom: 4),
              criarBotao(cor: Colors.blueGrey, numeroSom: 5),
              criarBotao(cor: Colors.purpleAccent.shade200, numeroSom: 6),
              criarBotao(cor: Colors.brown.shade800, numeroSom: 7),
            ],
          ),
        ),
      ),
    );
  }
}
