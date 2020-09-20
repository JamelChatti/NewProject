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

  var info = 'Gestion facture';
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    info= 'BIENVENUE';
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(info),
      ),
      body: RaisedButton(
        child: Text('Valider'),
        onPressed: (){
          print('Validation OK!');
          setState(() {
            info ='Gestion facture';
          });
        },
      ),
    );

  }
}
