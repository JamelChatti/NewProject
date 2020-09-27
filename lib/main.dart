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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Tuto snackBar'),
        centerTitle: true,
        actions: <Widget>[
          Icon(
            Icons.thumb_up,
            size: 35,
          ),
        ],
      ),
      body:
      Stack(
        //alignment: Alignment.topRight,
          children: <Widget>[
      Flex(
      direction: Axis.vertical,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(color: Colors.cyan,
              ),
            ),
            Expanded(
              flex: 3,
                child: Container(color: Colors.black,
                ))
                ]
      ),
        Positioned(
          top: 50,
          left: 20,
          right: 20,
          child: Container(
            height: 400,
            width: 200,
            color: Colors.amber,
            child: Column(
             // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  color: Colors.lightGreenAccent,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),

                Row(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Container(
                      margin:EdgeInsets.all(5),
                      height: 100,
                      width: 100,
                      color: Colors.red,
                    ),
                    Container(
                      margin:EdgeInsets.all(5),
                      height: 100,
                      width: 100,
                      color: Colors.purple,
                    )
                  ],
                )

              ],
            ),
          ),
        )

          ]
      ),
    );
    //barre de navigation
  }
}
