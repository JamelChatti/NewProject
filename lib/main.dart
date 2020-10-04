import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/data_table.dart';


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
  List<Geo> geos;
  void initState()
  {
    geos=Geo.getgeo();
    super.initState();
  }

  Widget tablesgeo() {
    return DataTable(
      columns: [
        DataColumn(label: Text('Pays', style: TextStyle(
            fontSize: 15, color: Colors.blue, fontWeight: FontWeight.bold),)),
        DataColumn(label: Text('Capital', style: TextStyle(
            fontSize: 15, color: Colors.blue, fontWeight: FontWeight.bold),)),
        DataColumn(label: Text('continent', style: TextStyle(
            fontSize: 15, color: Colors.blue, fontWeight: FontWeight.bold),)),
      ],
       rows:
      geos.map((geo)=>DataRow(
        cells:[
          DataCell(Text(geo.pays)),
          DataCell(Text(geo.capital)),
          DataCell(Text(geo.continent)),
        ]
      )).toList()
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Tuto DataTable'),
          centerTitle: true,
          actions: <Widget>[
            Icon(
              Icons.desktop_mac,
              size: 35,
            ),
          ],
        ),
        body: Center(
          child: ListView(
            children: <Widget>[
              tablesgeo(),
            ],
          ),

        )//barre de navigation
    );
  }
}

class Geo{
  String pays;
  String capital;
  String continent;
  Geo({this.pays, this.capital, this.continent});
  static List<Geo> getgeo(){
    return<Geo>[
      Geo(pays: 'Tunisie', capital: 'Tunis', continent: 'Afrique'),
      Geo(pays: 'Algerie', capital: 'Alger', continent: 'Afrique'),
      Geo(pays: 'Turkie', capital: 'Ankara', continent: 'Asie'),
      Geo(pays: 'Allemagne', capital: 'Berlin', continent: 'Europe'),
      Geo(pays: 'Tunisie', capital: 'Tunis', continent: 'Afrique'),
      Geo(pays: 'Algerie', capital: 'Alger', continent: 'Afrique'),
      Geo(pays: 'Turkie', capital: 'Ankara', continent: 'Asie'),
      Geo(pays: 'Allemagne', capital: 'Berlin', continent: 'Europe'),
      Geo(pays: 'Tunisie', capital: 'Tunis', continent: 'Afrique'),
      Geo(pays: 'Algerie', capital: 'Alger', continent: 'Afrique'),
      Geo(pays: 'Turkie', capital: 'Ankara', continent: 'Asie'),
      Geo(pays: 'Allemagne', capital: 'Berlin', continent: 'Europe'),
      Geo(pays: 'Tunisie', capital: 'Tunis', continent: 'Afrique'),
      Geo(pays: 'Algerie', capital: 'Alger', continent: 'Afrique'),
      Geo(pays: 'Turkie', capital: 'Ankara', continent: 'Asie'),
      Geo(pays: 'Allemagne', capital: 'Berlin', continent: 'Europe'),
      Geo(pays: 'Tunisie', capital: 'Tunis', continent: 'Afrique'),
      Geo(pays: 'Algerie', capital: 'Alger', continent: 'Afrique'),
      Geo(pays: 'Turkie', capital: 'Ankara', continent: 'Asie'),
      Geo(pays: 'Allemagne', capital: 'Berlin', continent: 'Europe'),
      Geo(pays: 'Tunisie', capital: 'Tunis', continent: 'Afrique'),
      Geo(pays: 'Algerie', capital: 'Alger', continent: 'Afrique'),
      Geo(pays: 'Turkie', capital: 'Ankara', continent: 'Asie'),
      Geo(pays: 'Allemagne', capital: 'Berlin', continent: 'Europe'),
     ];
  }
}