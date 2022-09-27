import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
    home:Home(),
    debugShowCheckedModeBanner: false,
  ));
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases=[
'Tudo o que um sonho precisa para ser realizado é alguém que acredite que ele possa ser realizado.'
'Imagine uma nova história para sua vida e acredite nela.    '
'Nunca deixe ninguém te dizer que não pode fazer alguma coisa. Se você tem um sonho tem que correr atrás dele. As pessoas não conseguem vencer e dizem que você também não vai vencer. Se você quer uma coisa corre atrás.'
'Não existe um caminho para a felicidade. A felicidade é o caminho.'
'Não espere por uma crise para descobrir o que é importante em sua vida.'
  ];
  var _frasesGerada='Clique abaixo para gerar uma frase';

void _gerarFrase(){
  var numeroSorteado= Random().nextInt(_frases.length);
  setState(() {
    _frasesGerada=_frasesGerada[numeroSorteado];
  });
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Frases do dia'),
        backgroundColor: Colors.purple,

      ),
      body:Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(width: 3,color: Colors.amber)

        ),child:Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[

Image.asset("images/logo.png"),
          Text(
            'Clique Abaixo para gerar uma frase',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 18,
              fontStyle: FontStyle.normal,
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


    );
  }
}
