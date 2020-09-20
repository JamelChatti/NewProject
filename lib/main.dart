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
String value = 'Bonjour';
String value1 = 'c\'est le bouton 2';
  var info = 'RaisedButton';
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    info= 'BIENVENUE';
  }
  void onclick(){
  setState(() {
    value = 'Tuto RaisedButton';
  });
  }

void onclick2(String value2){
  setState(() {
    value1 = value2;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(info),
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget> [
        RaisedButton(
          child: Text('bouton 1', style: TextStyle(color: Colors.green),
          ),
          onPressed:() => onclick(),
        ),
        Text(value, style: TextStyle(color: Colors.blue, fontSize: 40,),

        ),
        Divider(height: 10,),

        RaisedButton(
          child: Text('bouton 2', style: TextStyle(color: Colors.blue),
          ),
          onPressed: (){
            onclick2('Tuto pour les debutants');
          },
        ),
         Text(value1, style: TextStyle(color: Colors.green, fontSize: 40,),)

      ],
      ),
    );

  }
}
