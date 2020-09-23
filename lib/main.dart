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
  String value = '';

  void show(String a) {
    setState(() {
      value = a;
    });
  }

  void shows(String a) => setState(() => value = a);

  void bouton_Sheet (){
    showModalBottomSheet(context: context, builder: (BuildContext context){

      return Container(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Text(
              'Soyez le bienvenue',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 18,

              ),
            ),
          ],
        ),
      );
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text('Tuto FooterButton & SheetBottun'),
          centerTitle: true,
          actions: <Widget>[
            Icon(
              Icons.thumb_up,
              size: 35,
            ),
          ],
        ),
        persistentFooterButtons: <Widget>[
          IconButton(
            icon: Icon(
              Icons.zoom_out_map,
            ),
            onPressed: () => show('Zoom map'),
          ),
          IconButton(
            icon: Icon(Icons.account_balance_wallet),
            onPressed: () => shows('info bank'),
          ),
          IconButton(
            icon: Icon(Icons.add_comment),
            onPressed: () => show('Credit info'),
          ),
        ],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            ButtonTheme(
            minWidth: 200.0,
            height: 75.0,
            buttonColor: Colors.grey,
            child: RaisedButton(onPressed: bouton_Sheet , child: Text('Cliquer ici', style: TextStyle(fontSize: 20, ), ),),
          ),

              Text(
                'bienvenue',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
              ),
              Text(
                'bienvenue',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
              ),
              Text(
                '$value',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
              ),
            ],
          ),
        ));
  }
}
