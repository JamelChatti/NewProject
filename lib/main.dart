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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Tableau de bord Tunisair',
                    style: TextStyle(color: Colors.blue[800], fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Container(
                height: 500,
                width: 350,
                color: Colors.blue[400],
                child: viewer(),
              )
            ],
          ),
        ));
    //barre de navigation
  }
}

Widget viewer() {
  return ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(
          Icons.flight_takeoff,
          color: Colors.yellow,
          size: 40,
        ),
        title: Text(
          'Tunis-Istambul',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        subtitle: Text( 'Decollage 2:45',
          style: TextStyle(
              color: Colors.white, fontSize: 18, ),
      ),
        onTap: (){
          debugPrint('Fly Tunis-stambul');
        },
      ),
      ListTile(
        leading: Icon(
          Icons.flight_land,
          color: Colors.yellow,
          size: 40,
        ),
        title: Text(
          'Istambul-Tunis',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        subtitle: Text( 'Aterrissagee 12:35',
          style: TextStyle(
            color: Colors.white, fontSize: 18, ),
        ),
        onTap: (){
          debugPrint('Fly stambul-Tunis');
        },
      ),

      ListTile(
        leading: Icon(
          Icons.flight_takeoff,
          color: Colors.yellow,
          size: 40,
        ),
        title: Text(
          'Tunis-Istambul',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        subtitle: Text( 'Decollage 2:45',
          style: TextStyle(
            color: Colors.white, fontSize: 18, ),
        ),
        onTap: (){
          debugPrint('Fly Tunis-stambul');
        },
      ),
      ListTile(
        leading: Icon(
          Icons.flight_takeoff,
          color: Colors.yellow,
          size: 40,
        ),
        title: Text(
          'Istambul-Tunis',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        subtitle: Text( 'Aterrissagee 12:35',
          style: TextStyle(
            color: Colors.white, fontSize: 18, ),
        ),
        onTap: (){
          debugPrint('Fly stambul-Tunis');
        },
      ),
      ListTile(
        leading: Icon(
          Icons.flight_land,
          color: Colors.yellow,
          size: 40,
        ),
        title: Text(
          'Tunis-Istambul',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        subtitle: Text( 'Decollage 2:45',
          style: TextStyle(
            color: Colors.white, fontSize: 18, ),
        ),
        onTap: (){
          debugPrint('Fly Tunis-stambul');
        },
      ),
      ListTile(
        leading: Icon(
          Icons.flight_takeoff,
          color: Colors.yellow,
          size: 40,
        ),
        title: Text(
          'Istambul-Tunis',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        subtitle: Text( 'Aterrissagee 12:35',
          style: TextStyle(
            color: Colors.white, fontSize: 18, ),
        ),
        onTap: (){
          debugPrint('Fly stambul-Tunis');
        },
      ),
      ListTile(
        leading: Icon(
          Icons.flight_land,
          color: Colors.yellow,
          size: 40,
        ),
        title: Text(
          'Tunis-Istambul',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        subtitle: Text( 'Decollage 2:45',
          style: TextStyle(
            color: Colors.white, fontSize: 18, ),
        ),
        onTap: (){
          debugPrint('Fly Tunis-stambul');
        },
      ),
      ListTile(
        leading: Icon(
          Icons.flight_takeoff,
          color: Colors.yellow,
          size: 40,
        ),
        title: Text(
          'Istambul-Tunis',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        subtitle: Text( 'Aterrissagee 12:35',
          style: TextStyle(
            color: Colors.white, fontSize: 18, ),
        ),
        onTap: (){
          debugPrint('Fly stambul-Tunis');
        },
      ),
      ListTile(
        leading: Icon(
          Icons.flight_land,
          color: Colors.yellow,
          size: 40,
        ),
        title: Text(
          'Tunis-Istambul',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        subtitle: Text( 'Decollage 2:45',
          style: TextStyle(
            color: Colors.white, fontSize: 18, ),
        ),
        onTap: (){
          debugPrint('Fly Tunis-stambul');
        },
      ),
      ListTile(
        leading: Icon(
          Icons.flight_takeoff,
          color: Colors.yellow,
          size: 40,
        ),
        title: Text(
          'Istambul-Tunis',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        subtitle: Text( 'Aterrissagee 12:35',
          style: TextStyle(
            color: Colors.white, fontSize: 18, ),
        ),
        onTap: (){
          debugPrint('Fly stambul-Tunis');
        },
      ),
      ListTile(
        leading: Icon(
          Icons.flight_land,
          color: Colors.yellow,
          size: 40,
        ),
        title: Text(
          'Tunis-Istambul',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        subtitle: Text( 'Decollage 2:45',
          style: TextStyle(
            color: Colors.white, fontSize: 18, ),
        ),
        onTap: (){
          debugPrint('Fly Tunis-stambul');
        },
      ),
      ListTile(
        leading: Icon(
          Icons.flight_takeoff,
          color: Colors.yellow,
          size: 40,
        ),
        title: Text(
          'Istambul-Tunis',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        subtitle: Text( 'Aterrissagee 12:35',
          style: TextStyle(
            color: Colors.white, fontSize: 18, ),
        ),
        onTap: (){
          debugPrint('Fly stambul-Tunis');
        },
      ),
      ListTile(
        leading: Icon(
          Icons.flight_land,
          color: Colors.yellow,
          size: 40,
        ),
        title: Text(
          'Tunis-Istambul',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        subtitle: Text( 'Decollage 2:45',
          style: TextStyle(
            color: Colors.white, fontSize: 18, ),
        ),
        onTap: (){
          debugPrint('Fly Tunis-stambul');
        },
      ),
      ListTile(
        leading: Icon(
          Icons.flight_takeoff,
          color: Colors.yellow,
          size: 40,
        ),
        title: Text(
          'Istambul-Tunis',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        subtitle: Text( 'Aterrissagee 12:35',
          style: TextStyle(
            color: Colors.white, fontSize: 18, ),
        ),
        onTap: (){
          debugPrint('Fly stambul-Tunis');
        },
      ),
      ListTile(
        leading: Icon(
          Icons.flight_land,
          color: Colors.yellow,
          size: 40,
        ),
        title: Text(
          'Tunis-Istambul',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        subtitle: Text( 'Decollage 2:45',
          style: TextStyle(
            color: Colors.white, fontSize: 18, ),
        ),
        onTap: (){
          debugPrint('Fly Tunis-stambul');
        },
      ),
      ListTile(
        leading: Icon(
          Icons.flight_takeoff,
          color: Colors.yellow,
          size: 40,
        ),
        title: Text(
          'Istambul-Tunis',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        subtitle: Text( 'Aterrissagee 12:35',
          style: TextStyle(
            color: Colors.white, fontSize: 18, ),
        ),
        onTap: (){
          debugPrint('Fly stambul-Tunis');
        },
      ),
      ListTile(
        leading: Icon(
          Icons.flight_land,
          color: Colors.yellow,
          size: 40,
        ),
        title: Text(
          'Tunis-Istambul',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        subtitle: Text( 'Decollage 2:45',
          style: TextStyle(
            color: Colors.white, fontSize: 18, ),
        ),
        onTap: (){
          debugPrint('Fly Tunis-stambul');
        },
      ),
      ListTile(
        leading: Icon(
          Icons.flight_takeoff,
          color: Colors.yellow,
          size: 40,
        ),
        title: Text(
          'Istambul-Tunis',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        subtitle: Text( 'Aterrissagee 12:35',
          style: TextStyle(
            color: Colors.white, fontSize: 18, ),
        ),
        onTap: (){
          debugPrint('Fly stambul-Tunis');
        },
      ),
      ListTile(
        leading: Icon(
          Icons.flight_land,
          color: Colors.yellow,
          size: 40,
        ),
        title: Text(
          'Tunis-Istambul',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        subtitle: Text( 'Decollage 2:45',
          style: TextStyle(
            color: Colors.white, fontSize: 18, ),
        ),
        onTap: (){
          debugPrint('Fly Tunis-stambul');
        },
      ),
      ListTile(
        leading: Icon(
          Icons.flight_takeoff,
          color: Colors.yellow,
          size: 40,
        ),
        title: Text(
          'Istambul-Tunis',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        subtitle: Text( 'Aterrissagee 12:35',
          style: TextStyle(
            color: Colors.white, fontSize: 18, ),
        ),
        onTap: (){
          debugPrint('Fly stambul-Tunis');
        },
      ),
      ListTile(
        leading: Icon(
          Icons.flight_land,
          color: Colors.yellow,
          size: 40,
        ),
        title: Text(
          'Tunis-Istambul',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        subtitle: Text( 'Decollage 2:45',
          style: TextStyle(
            color: Colors.white, fontSize: 18, ),
        ),
        onTap: (){
          debugPrint('Fly Tunis-stambul');
        },
      ),
      ListTile(
        leading: Icon(
          Icons.flight_takeoff,
          color: Colors.yellow,
          size: 40,
        ),
        title: Text(
          'Istambul-Tunis',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        subtitle: Text( 'Aterrissagee 12:35',
          style: TextStyle(
            color: Colors.white, fontSize: 18, ),
        ),
        onTap: (){
          debugPrint('Fly stambul-Tunis');
        },
      ),
      ListTile(
        leading: Icon(
          Icons.flight_land,
          color: Colors.yellow,
          size: 40,
        ),
        title: Text(
          'Tunis-Istambul',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        subtitle: Text( 'Decollage 2:45',
          style: TextStyle(
            color: Colors.white, fontSize: 18, ),
        ),
        onTap: (){
          debugPrint('Fly Tunis-stambul');
        },
      ),
      ListTile(
        leading: Icon(
          Icons.flight_takeoff,
          color: Colors.yellow,
          size: 40,
        ),
        title: Text(
          'Istambul-Tunis',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        subtitle: Text( 'Aterrissagee 12:35',
          style: TextStyle(
            color: Colors.white, fontSize: 18, ),
        ),
        onTap: (){
          debugPrint('Fly Istambul-Tunis');
        },
      ),


    ],
  );
}
