import 'package:flutter/material.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
        home: GestionFacture(),
    );
  }
}

class GestionFacture extends StatefulWidget {
  @override
  _GestionFactureState createState() => _GestionFactureState();
}

class _GestionFactureState extends State<GestionFacture> {
  int note = 0;

@override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenue'),
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget> [
        FlatButton(
          onPressed: (){
            debugPrint('---Bouton flat ok-----');
              },
          child: Text('Bouton flat', style: TextStyle(color: Colors.white, fontSize: 20,),),
          color: Colors.blue,
        ),

        IconButton(
          icon: Icon(Icons.thumb_up, color: Colors.green, size: 60,),
          tooltip: 'j\'aime',
          onPressed: (){
            setState(() {

            });
            note+=1;
          },
        ),


        Text('Votre point de vue: $note', style: TextStyle(color: Colors.indigo, fontSize: 20,),

        ),


        IconButton(
          icon: Icon(Icons.thumb_down, color: Colors.red, size: 60,),
          tooltip: 'je n\'aime pas',
          onPressed: (){
            setState(() {

            });
            note-=1;
          },
        ),


      ],
      ),
    );

  }
}
