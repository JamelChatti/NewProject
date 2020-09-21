import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: GestionFacture(),
    );
  }
}

class GestionFacture extends StatefulWidget {
  @override
  _GestionFactureState createState() => _GestionFactureState();
}

class _GestionFactureState extends State<GestionFacture> {
  bool val1 = false;
  bool val2 = false;
  bool val3 = false;

  void change1(bool s) {
    setState(() {
      val1 = s;
    });
  }

  void change2(bool t) {
    setState(() {
      val2 = t;
    });
  }
  void change3(bool z) {
    setState(() {
      val3 = z;
    });
  }


  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Check Box'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Bienvenue chez pharmacie Chatti',
                style: TextStyle(fontSize: 18, color: Colors.deepPurple),
              ),
              Checkbox(value:val1 ,onChanged: change1,),
              CheckboxListTile(value: val2,onChanged: change2,
              title: Text('Capital du Canada') ,
              controlAffinity: ListTileControlAffinity.trailing ,
              subtitle: Text('Ottawa'),),
              CheckboxListTile(value: val3,onChanged: change3,
                title: Text('Capital des USA') ,
                controlAffinity: ListTileControlAffinity.trailing ,
                subtitle: Text('Wachinton'),)
            ],
          ),
        ));
  }
}
