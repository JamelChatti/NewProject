import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo',
      theme: ThemeData(
        primarySwatch: Colors.brown,
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
  String value = ' ';

  void submit(String a) {
    setState(() {
      value = 'Message envoyé $a';
    });
  }

  void affichage(String b) {
    setState(() {
      value = 'Bienvenue $b';
    });
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Tuto TextField'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Text(value, style: TextStyle(fontSize: 20, color: Colors.blue),
                textAlign: TextAlign.center,),
              TextField(decoration: InputDecoration(
                  labelText: 'Nom',
                  hintText: 'Entrer votre nom',
                  icon: Icon(Icons.person, color: Colors.deepPurple, size: 50,)
              ),
                keyboardType: TextInputType.text,
                autocorrect: true,
                autofocus: true,
                onChanged: affichage,
                onSubmitted: submit,
              ),
              TextFormField(decoration: InputDecoration(
                  labelText: 'Prenom',
                  hintText: 'Entrer votre prenom',
                  icon: Icon(
                    Icons.perm_identity, color: Colors.deepPurple, size: 50,)
              ),
                keyboardType: TextInputType.text,
              ),

              TextField(decoration: InputDecoration(
                  labelText: 'Phone',
                  hintText: 'Entrer votre numero de Téléphone',
                  icon: Icon(Icons.phone, color: Colors.deepPurple, size: 50,)
              ),
                keyboardType: TextInputType.number,
              ),

              TextField(decoration: InputDecoration(
                  labelText: 'Mot de passe',
                  hintText: 'Entrer votre Mot de passe',
                  icon: Icon(Icons.lock, color: Colors.red, size: 50,)
              ),
                keyboardType: TextInputType.text,
                obscureText: true,
              ),


            ],
          ),
        ));
  }
}
