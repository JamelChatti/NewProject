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
          backgroundColor: Colors.cyan,
          title: Text('Tuto AppBar'),
          centerTitle: true,
          actions: <Widget>[
            Icon(
              Icons.thumb_up,
              size: 35,
            ),
          ],

        ),
        drawer: ListView(padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
          'Programe & framework',
          style: TextStyle(fontSize: 25, color: Colors.red
              ),
            ),
              decoration: BoxDecoration(color: Colors.black),
            ),
            ListTile(title: Text('Dart') ,onTap: (){
              Navigator.pop(context);
            },),

            ListTile(title: Text('Java') ,onTap: (){
              Navigator.pop(context);
            },),

            ListTile(title: Text('Swift') ,onTap: (){
              Navigator.pop(context);
            },),

            ListTile(title: Text('Objecti-C') ,onTap: (){
              Navigator.pop(context);
            },),

            ListTile(title: Text('Foxpro') ,onTap: (){
              Navigator.pop(context);
            },),

            ListTile(title: Text('C++') ,onTap: (){
              Navigator.pop(context);
            },),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
            ],
          ),
        ));
  }
}
