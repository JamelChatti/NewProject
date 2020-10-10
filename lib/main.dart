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
  Widget movies(String name, String image, String movie) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
          backgroundImage: NetworkImage(image),
          radius: 30,
          child: Text(
            image.length == 0 ? name[0].toUpperCase() : '',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        title: Text(
          name,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          movie,
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.purple),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Tuto CircleAvatar '),
          centerTitle: true,
          actions: <Widget>[
            Icon(
              Icons.local_florist,
              size: 35,
            ),
          ],
        ),
        body: ListView(
          children: <Widget>[
            movies(
                'Chatti Jamel',
                'https://tse4.mm.bing.net/th?id=OIP.K6oPQ7NF0lf0bx1LLhGkpgHaFz&pid=Api&P=0&w=218&h=172',
                'Pharmacien'),
            Divider(height: 10,),
            movies(
                'Imen Chatti Sabbagh',
                'https://tse3.mm.bing.net/th?id=OIP.9MYaDxeEDvakBSZ2jT1m6gHaE8&pid=Api&P=0&w=236&h=158',
                'Institutrice'),
            Divider(height: 10,),
            movies(
                'Ghassen Chatti',
                'https://tse4.mm.bing.net/th?id=OIP.K6oPQ7NF0lf0bx1LLhGkpgHaFz&pid=Api&P=0&w=218&h=172',
                'Pharmacien'),
            Divider(height: 10,),
            movies(
                'Ahmed Chatti',
                '',
                'Medecin'),
            Divider(height: 10,),
            movies(
                'Nada Chatti ',
                '',
                'Ingenieur'),
            Divider(height: 10,),
            movies(
                'Jihen Chatti',
                '',
                'Pharmacien'),
            Divider(height: 10,),
            Divider(height: 10,),
            movies(
                'Ahmed Chatti',
                '',
                'Medecin'),
            Divider(height: 10,), movies(
                'Chatti Jamel',
                'https://tse4.mm.bing.net/th?id=OIP.K6oPQ7NF0lf0bx1LLhGkpgHaFz&pid=Api&P=0&w=218&h=172',
                'Pharmacien'),
            Divider(height: 10,),
            movies(
                'Ahmed Chatti',
                '',
                'Medecin'),
            Divider(height: 10,),
            movies(
                'Chatti Jamel',
                'https://tse4.mm.bing.net/th?id=OIP.K6oPQ7NF0lf0bx1LLhGkpgHaFz&pid=Api&P=0&w=218&h=172',
                'Pharmacien'),
            Divider(height: 10,),
            movies(
                'Ahmed Chatti',
                '',
                'Medecin'),
            Divider(height: 10,),
            movies(
                'Chatti Jamel',
                'https://tse4.mm.bing.net/th?id=OIP.K6oPQ7NF0lf0bx1LLhGkpgHaFz&pid=Api&P=0&w=218&h=172',
                'Pharmacien'),
            Divider(height: 10,),
            movies(
                'Ahmed Chatti',
                '',
                'Medecin'),
            Divider(height: 10,)
          ],
        ));
  }
}
