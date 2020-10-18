import 'dart:ui';
import'package:flutter/src/material/dropdown.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter DropDownlist',
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
  List<DropdownMenuItem<String>> listmonths = [];
  String def = null;
void months(){
  listmonths.clear();
  listmonths.add(
      DropdownMenuItem(
        value : 'Janvier',
        child:
      Text(
        'Janvier',
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 25),
      ),)
      );
  listmonths.add(
      DropdownMenuItem(
        value : 'Fevrier',
        child:
        Text(
          'Fevrier',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25),
        ),)
  );
  listmonths.add(
      DropdownMenuItem(
        value : 'Mars',
        child:
        Text(
          'Mars',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25),
        ),)
  );
  listmonths.add(
      DropdownMenuItem(
        value : 'Avril',
        child:
        Text(
          'Avril',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25),
        ),)
  );
  listmonths.add(
      DropdownMenuItem(
        value : 'Mai',
        child:
        Text(
          'Mai',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25),
        ),)
  );
  listmonths.add(
      DropdownMenuItem(
        value : 'Juin',
        child:
        Text(
          'Juin',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25),
        ),)
  );
  listmonths.add(
      DropdownMenuItem(
        value : 'Juillet',
        child:
        Text(
          'Juillet',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25),
        ),)
  );
  listmonths.add(
      DropdownMenuItem(
        value : 'Aout',
        child:
        Text(
          'Aout',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25),
        ),)
  );
  listmonths.add(
      DropdownMenuItem(
        value : 'Septembre',
        child:
        Text(
          'Septembre',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25),
        ),)
  );
  listmonths.add(
      DropdownMenuItem(
        value : 'Octobre',
        child:
        Text(
          'Octobre',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25),
        ),)
  );
  listmonths.add(
      DropdownMenuItem(
        value : 'Novembre',
        child:
        Text(
          'Novembre',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25),
        ),)
  );
  listmonths.add(
      DropdownMenuItem(
        value : 'Decembre',
        child:
        Text(
          'Decembre',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25),
        ),)
  );

}
  @override
  Widget build(BuildContext context) {
  months();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Tuto DropDownlist '),
          centerTitle: true,
          actions: <Widget>[
            Icon(
              Icons.local_florist,
              size: 35,
            ),
          ],
        ),
        body: Container(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: DropdownButton(
                    value: def,
                    elevation: 10,
                    items: listmonths,
                    hint: Text(
                      'Selectionnez le mois',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                    onChanged: (value){
                      def=value;
                      setState(() {

                      });
                    }),
              ),
              Container(
                padding: EdgeInsets.all(25),
                child: Text(
                  'Le mois est : $def',
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        )));
  }
}
