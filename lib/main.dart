import 'dart:math';
import 'package:flutter/material.dart';

void main()
{
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DailyPhrases(),
  ));
}

class DailyPhrases extends StatefulWidget 
{
  const DailyPhrases({ Key? key }) : super(key: key);

  @override
  _DailyPhrasesState createState() => _DailyPhrasesState();
}

class _DailyPhrasesState extends State<DailyPhrases> 
{

  int _randomNumber = 0;

  final List _phrases = [
    '"A vingança nunca é plena, mata a alma e envenena."',
    '"Eu sabia que você era idiota, mas não a nível executivo!"',
    '"O trabalho não é ruim. Ruim é ter de trabalhar!"',
    '"As pessoas boas devem amar seu inimigos."',
    '"Isto é uma caliúnia! Uma caliúnia! Você sabe o que é uma caliúnia?"',
    '"São todas assim: começam ficando com o chapéu e acabam ficando com a carteira!"',
    '"Não há nada mais trabalhoso do que viver sem trabalhar!"',
    '"Somente um idiota responde uma pergunta com outra pergunta"',
    '"Quando a fome aperta, a vergonha afrouxa..."',
    '"Sou um homem de muita barriga senhor sorte."',
    '"Olha, Quico… diga à sua mãe que, na salada, a gente coloca vinagre… e não cachaça!"',
    '"Isso é boxe não luta de mulas"',
    '"Estou falando com a mula, não com os seus carrapatos."',
    '"Que que foi, que que foi, que que há?"',
    '"Olha, se existisse Olimpíadas para idiotas, você ganharia a medalha de ouro!"',
    '"Se soubesse que tinha mandado um idiota fazer isso, tinha ido eu mesmo."',
    '"Moça bonita. Moça bem feita. Moça formosa!"'
  ];

  void _incrementCounter() 
  {
    setState(() => _randomNumber = Random().nextInt(_phrases.length));
  }

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daily Phrases"),
        centerTitle: true,
      ),

      body: Center(
        child: Container(
        padding: const EdgeInsets.all(16),
        //width: double.infinity,
        /* decoration: BoxDecoration(
          border: Border.all(width: 5, color: Colors.amber)
        ), */

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            Image.asset("images/don_ramon.jpg"),
            const Text(
              "\"Click bellow to generate a new phrase\"",
              textAlign:TextAlign.justify,
              style: TextStyle(
                fontSize: 25,
                fontStyle: FontStyle.italic,
                color: Colors.black
              ),
            ),

            Text(
              _phrases[_randomNumber],
              textAlign:TextAlign.justify,
              style: const TextStyle(
                fontSize: 25,
                fontStyle: FontStyle.italic,
                color: Colors.black
              ),
            ),

            ElevatedButton(
              onPressed: _incrementCounter,
              child: const Text(
                "New Phrase",
                style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white
                ),
              ),
            ),
          ],
         ),
        )
      ),
    );
  }
}
