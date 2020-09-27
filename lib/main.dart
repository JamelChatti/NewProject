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
      body: Center(
          child: Card(
        child: Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            color: Colors.blue[100],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Colors.blue,
                    size: 40,
                  ),
                  title: Text(
                    'Bienvenue',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  subtitle: Text(
                    'Tuoto français N 22 widget card ',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20,
                        color: Colors.black),
                  ),
                ),
                Divider(height: 20,),
                ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.blue,
                    size: 40,
                  ),
                  title: Text(
                    'Telephone',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  subtitle: Text(
                    'telephone ',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20,
                        color: Colors.black),
                  ),
                ),
                Divider(height: 20,),
                ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.blue,
                    size: 40,
                  ),
                  title: Text(
                    'Email',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  subtitle: Text(
                    'email ',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20,
                        color: Colors.black),
                  ),
                )

              ],
            )),
      )),
    );
    //barre de navigation
  }
}
// child:
// Stack(
// children: <Widget>[
// Container(
// color: Colors.deepOrange,
// )
// ],
// )