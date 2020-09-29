import 'dart:ui';

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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text('Tuto ListViewBuilder'),
            centerTitle: true,
            actions: <Widget>[
              Icon(
                Icons.thumb_up,
                size: 35,
              ),
            ],
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  child: Icon(Icons.alarm),
                ),
                Tab(
                  child: Icon(Icons.present_to_all),
                ),
                Tab(
                  child: Icon(Icons.directions_walk),
                ),
                Tab(
                  child: Icon(Icons.airline_seat_individual_suite),
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Card(
                color: Colors.limeAccent,
                child: Image.asset(
                  'images/th5.png',
                  height: 200,
                  width: 200,
                ),
              ),
              Card(
                color: Colors.green,
                child: Image.asset(
                  'images/th6.png',
                  height: 200,
                  width: 200,
                ),
              ),
              Card(
                color: Colors.deepOrangeAccent,
                child: Image.asset(
                  'images/th7.png',
                  height: 200,
                  width: 200,
                ),
              ),
              Card(
                color: Colors.deepPurpleAccent,
                child: Image.asset(
                  'images/th8.png',
                 // height: 100,
                  //width: 100,
                ),
              ),
            ],
          ),
        ),
      ),
    );

    //barre de navigation
  }
}
