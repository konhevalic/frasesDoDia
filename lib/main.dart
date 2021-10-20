import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final _frases = [
    "Não importa a cor do céu. Quem faz o dia bonito é você.",
    "Bom dia! Que seu dia seja igual a vontade de Deus: bom, perfeito e agradável.",
    "Sorria! Deus acaba de te dar um novo dia e coisas extraordinárias podem acontecer se você crer!",
    "Um pequeno pensamento positivo pela manhã pode mudar todo o seu dia.",
    "Que o dia seja leve, que a tristeza seja breve e que o dia seja feliz. Bom dia!",
    "Pra hoje: sorrisos bobos, uma mente tranquila e um coração cheio de paz.",
    "Independente do que estiver sentindo, levante-se, vista-se e saia para brilhar.",
    "A cada nova manhã, nasce junto uma nova chance. Bom dia!",
    "Bom dia! Comece o dia sorrindo. Afinal, coisa boa atrai coisa boa.",
    "Que o amor seja a melhor forma de começar e terminar o dia.",
    "Que esse dia seja cheio de energia positiva, amém.",
    "Hoje eu acordei tão linda que quando fui bocejar, miei.",
    "Tenha um bom dia, uma semana fantástica e uma vida maravilhosa.",
    "Viva cada momento, ria todos os dias, ame além das palavras... Tenha um bom dia!",
    "O seu sorriso pode mudar o dia de alguém."
  ];

  var _fraseGerada = "Clique abaixo para gerar uma nova frase";

  void _gerarFrase() {
    var _numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[_numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("images/logo.png"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  color: Colors.black
                )
              ),
              ElevatedButton(
                child: const Text(
                  "Nova frase",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
                style: ElevatedButton.styleFrom(primary: Colors.green),
                onPressed: _gerarFrase
              )
            ],
          ),
        ),
      )
    );
  }
}
