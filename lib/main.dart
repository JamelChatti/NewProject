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

enum reponse {
  OUI,
  NON,
  SAIS_PAS,
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
      body: Center(

        child: Container(
          padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            color: Colors.blueAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Tunisair',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                    ),
                    // Text(
                    //   'Tunisair',
                    //   textDirection: TextDirection.ltr,
                    //   style: TextStyle(
                    //       decoration: TextDecoration.none,
                    //       fontSize: 30,
                    //       fontWeight: FontWeight.w700,
                    //       color: Colors.red),
                    // ),
                    Expanded(
                      child: Text(
                        'From Tunis to Istambul',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          color: Colors.red,
                        ),
                      ),
                    )
                  ],
                ),

                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Turkish airline',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                    ),
                    // Text(
                    //   'Tunisair',
                    //   textDirection: TextDirection.ltr,
                    //   style: TextStyle(
                    //       decoration: TextDecoration.none,
                    //       fontSize: 30,
                    //       fontWeight: FontWeight.w700,
                    //       color: Colors.red),
                    // ),
                    Expanded(
                      child: Text(
                        'From Istambul to Tunis  ',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          color: Colors.red,
                        ),
                      ),
                    )
                  ],
                ),

                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Nouvelair',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                    ),
                    // Text(
                    //   'Tunisair',
                    //   textDirection: TextDirection.ltr,
                    //   style: TextStyle(
                    //       decoration: TextDecoration.none,
                    //       fontSize: 30,
                    //       fontWeight: FontWeight.w700,
                    //       color: Colors.red),
                    // ),
                    Expanded(
                      child: Text(
                        'From Tunis to Paris',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          color: Colors.red,
                        ),
                      ),
                    )
                  ],
                ),

              ],
            )),
      ),
    );
    //barre de navigation
  }
}
