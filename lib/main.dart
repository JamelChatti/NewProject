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
          title: Text('Tuto ListViewBuilder'),
          centerTitle: true,
          actions: <Widget>[
            Icon(
              Icons.thumb_up,
              size: 35,
            ),
          ],
        ),
        body:Container(
          child: getListView(),
        )
    );
    //barre de navigation
  }
}

List<String> getListeElement() {
  var item = List<String>.generate(25, (index) => 'Article:$index');
  return item;
}

Widget getListView() {
  var listitem = getListeElement();
  var listview = ListView.builder(
    itemCount: listitem.length ,
      itemBuilder: (context, val) {
    return ListTile(
      title: Text(
        listitem[val],
        style: TextStyle(color: Colors.red, fontSize: 30),
      ),
      leading: Icon(
        Icons.nature,
        color: Colors.green,
        size: 40,
      ),
      onTap: () {
        debugPrint('Valeur active : $listitem[val]');
      },
    );
  });
  return listview;
}
