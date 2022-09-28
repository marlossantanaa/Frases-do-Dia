import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
    home:Home(),
    debugShowCheckedModeBanner: false,
  ));
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "Sou apenas um pequeno planeta que se perde diariamente em todo o seu universo.",
    "Novas amizades serão sempre bem-vindas para darem cor e alegria ao meu dia a dia.",
    "Gratidão não é pagamento, mas um reconhecimento que se demonstra no dia a dia.",
    "Nem toda mudança importante acontece de repente e faz barulho, algumas são silenciosas e vão se fazendo no dia a dia."
  "Enfim, o fundo do poço da vergonha foi atingido quando a informática, o marketing, o design, a publicidade, todas as disciplinas da comunicação apoderaram-se da própria palavra conceito e disseram: é nosso negócio, somos nós os criativos, nós somos os 'conceituadores'!",
    "O maior problema em informatica não é o hardware ou o software, quase sempre está localizado entre a cadeira e o monitor",
    "Todos já fomos (e na verdade ainda somos) a moça ou o rapaz da informática.",
    "Todo profissional de TI já ouviu a frase “fulano, a internet caiu, você consegue resolver?”. ",
    "É claro que nossa aparência de calmo e tranquilo nem sempre transmite exatamente o que estamos pensando ou desejando poder fazer. Mas nada como manter a classe, mesmo em situações adversas. "

  ];

  var _frasesGerada='Clique abaixo para gerar uma frase';

void _gerarFrase(){
  var _numeroSorteado= Random().nextInt(_frases.length);
  setState(() {
    _frasesGerada= _frases[_numeroSorteado];
  });

}

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Frases do dia'),
        backgroundColor: Colors.lightBlue ,

      ),
      body: Center(
      child:Container(
        padding: EdgeInsets.all(16),

        child:Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[

Image.asset("images/logo1.png"),
          Text(
            _frasesGerada,
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 25,
              fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
              color: Colors.black
            ),
          ),
         ElevatedButton(
                   child: Text(
                     "Nova Frase",
                     style: TextStyle(
                     fontSize:25,
                       fontStyle:FontStyle.normal,
                       fontWeight: FontWeight.bold,

                   ),
         ),

           onPressed: _gerarFrase,
         )
        ],
      )
      ) ,
    )
    );
  }
}
