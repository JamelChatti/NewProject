import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter demo',
      //   primarySwatch: Colors.blue,
      // theme: ThemeData(
      // ),
      home: GestionFacture(),
    );
  }
}

class GestionFacture extends StatefulWidget {
  @override
  _GestionFactureState createState() => _GestionFactureState();
}

class _GestionFactureState extends State<GestionFacture> {
  final GlobalKey<ScaffoldState>  _sb = GlobalKey<ScaffoldState>();
  void _snackBar(){
    _sb.currentState.showSnackBar(SnackBar(content: Text('Votre message a été supprimé')));
        
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _sb,
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('Tuto snackBar'),
        centerTitle: true,
        actions: <Widget>[
          Icon(
            Icons.thumb_up,
            size: 35,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: _snackBar,
              child: Text(
                'Supprimer message',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
            Text(
              'bienvenue',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 18,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
            ),
            Text(
              'bienvenue',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 18,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
            ),
            Text(
              'Bienvenue',
              style: TextStyle(
                color: Colors.red,
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
    //barre de navigation
  }
}
