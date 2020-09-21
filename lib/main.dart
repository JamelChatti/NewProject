import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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
  int val1 = 0;
  int val2 = 0;

  void change1(int s) {
    setState(() {
      val1 = s;
    });
  }

  void change2(int t) {
    setState(() {
      val2 = t;
    });
  }
  Widget radio(){
    List<Widget> _Button_radio = new List();
    for(int i =0; i<4; i++){
      _Button_radio.add(
        Radio(value:i, groupValue: val1 , onChanged:change1 ,)
      );
    }
      Column column =Column(children: _Button_radio,);
      return column;

  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bouton radio'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
               Text(
                'Bienvenue chez Pharmacie Chatti',
                style: TextStyle(
                    height:2,
                    fontSize: 18,
                    color: Colors.green,
                   fontWeight: FontWeight.bold,
                  //  fontStyle: FontStyle.italic,
                 // decoration: TextDecoration.underline,
                //  decorationColor: Colors.red,

                    ),
              ),
                radio(),
            ],
          ),
        ));
  }
}
