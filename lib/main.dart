import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
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
  bool val1 = false;
  bool val2 = false;
  double val3 = 0.0;

  void change1(bool s) {
    setState(() {
      val1 = s;
    });
  }

  void change2(bool t) {
    setState(() {
      val2 = t;
    });
  }

  void change3(double z) {
    setState(() {
      val3 = z;
    });
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Slider & Swich'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Switch(
                value: val1,
                onChanged: change1,
                activeColor: Colors.green,
              ),
              SwitchListTile(
                value: val2,
                onChanged: change2,
                activeColor: Colors.red,
                title: Text(
                  'Valider interripteur',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                'Valider curseur${(val3*100).round()}',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.cyan,
                    fontWeight: FontWeight.bold),
              ),
              Slider(
                value: val3,
                onChanged: change3,
              )
            ],
          ),
        ));
  }
}
