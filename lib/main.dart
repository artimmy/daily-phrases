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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            Image.asset("images/don_ramon.jpg"),
            const Text(
              "\"Click bellow to generate a phrase\"",
              textAlign:TextAlign.justify,
              style: TextStyle(
                fontSize: 25,
                fontStyle: FontStyle.italic,
                color: Colors.black
              ),
            ),

            ElevatedButton(
              onPressed: () {},
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
