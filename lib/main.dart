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
  String value = '';

  void onshow() {
    setState(() {
      value = new DateTime.now().toString();
    });
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButton'),
      ),
      body: Column(
        children: <Widget>[
          Text(
            'La date du jour et l\'heure' ,
            style: TextStyle(
              fontSize: 30,
              color: Colors.indigo,
            ),
            textAlign: TextAlign.center,
                      ),
           Text(
        '= $value',
        style: TextStyle(
          fontSize: 30,
          color: Colors.red,
        ),
        textAlign: TextAlign.center,
           )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: onshow,
        backgroundColor: Colors.red,
        label: Text('Time'),
        icon: Icon(Icons.timer),
        //child: Icon(Icons.timer),
      ),
    );
  }
}
