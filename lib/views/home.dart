import 'dart:math';

import "package:flutter/material.dart";

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  final List<String> _frases = [
     "Não deixe que as pessoas te façam desistir daquilo que você mais quer na vida.",
     "Acredite. Lute. Conquiste. E acima de tudo, seja feliz!",
     "A persistência é o caminho do êxito.",
     "Imagine uma nova história para sua vida e acredite nela. - Paulo Coelho.",
     "O sucesso nasce do querer, da determinação e persistência em se ecehgar a um objetivo. Mesmo não atingindo o alvo, quem busca e vence obstáculos, no mínimo fazem coisas admiráveis. - José de Alencar.",
     "Dificuldades preparam pessoas comuns para destinos extraordinários. - C. S. Lewis",
     "Pessoas vencedores não são aquelas que não falham, são aquelas que não desisstem.", 
   ];

  String _fraseGerada = "Clique abaixo para gerar uma frase!";

  void gerarFrase(){
    int numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases.elementAt(numeroSorteado);//_frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Coach Motivacional"),
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('images/coach.png'),
            Text(_fraseGerada, style: TextStyle(
              fontSize: 20,
              fontStyle: FontStyle.italic,
              color: Colors.black,
            ),
            textAlign: TextAlign.justify,
            ),
            ElevatedButton(
              onPressed: gerarFrase, 
              child: Text("Mudar Frase"),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                textStyle: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}