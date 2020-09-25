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
  List<BottomNavigationBarItem> _item;
  int _id = 0;
  String value = '';
  Widget ic = Container();
  String msg = '';

  void _setvalue(String a) => setState(() => value = a);

  void _setmsg(String b) => setState(() => msg = b);

  void _seticon(Widget c) => setState(() => ic = c);

  Future info(String a, Widget ic) async {
    switch (await showDialog(
      context: context,
      child: SimpleDialog(
        title: Text(
          a.toString(),
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        children: <Widget>[
          SimpleDialogOption(
            child: Text('OUI'),
            onPressed: () {
              Navigator.pop(
                context,
                reponse.OUI,
              );
            },
          ),
          SimpleDialogOption(
            child: Text('NON'),
            onPressed: () {
              Navigator.pop(
                context,
                reponse.NON,
              );
            },
          ),
          SimpleDialogOption(
            child: Text('SAIS_PAS'),
            onPressed: () {
              Navigator.pop(
                context,
                reponse.SAIS_PAS,
              );
            },
          )
        ],
      ),
    )) {
      case reponse.OUI:
        _setvalue('OUI, je suis satisfait du service');
        _seticon(Icon(Icons.thumb_up, color: Colors.green,size: 40,));
        break;
      case reponse.NON:
        _setvalue('NON, je ne suis pas satisfait du service');
        _seticon(Icon(Icons.thumb_down, color: Colors.red,size: 40,));

        break;
      case reponse.SAIS_PAS:
        _setvalue('Je ne sais pas je suis partagé');
        _seticon(Icon(Icons.thumbs_up_down, color: Colors.grey,size: 40,));

        break;
    }
  }

  void initState() {
    super.initState();
    _item = new List();
    _item.add(BottomNavigationBarItem(
        icon: Icon(
          Icons.local_hospital,
          color: Colors.purple,
        ),
        title: Text('Clinique')));
    _item.add(BottomNavigationBarItem(
        icon: Icon(
          Icons.restaurant,
          color: Colors.blue,
        ),
        title: Text('Restaurant')));
    _item.add(BottomNavigationBarItem(
        icon: Icon(
          Icons.hotel,
          color: Colors.green,
        ),
        title: Text('Hotel')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
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
              'Point de vu: ',
              style: TextStyle(
                color: Colors.green,
                fontSize: 30,
              ),
            ),

            Text(
              '$value',
              style: TextStyle(
                color: Colors.red,
                fontSize: 30,
              ),
            ),

            ic,
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _item,
        fixedColor: Colors.blue,
        currentIndex: _id,
        onTap: (int item) {
          _id = item;
          setState(() {
            if (_id == 0) ;
            {
              _setmsg('Etes vous satisfait du service fourni par la clinique');
            }

            if (_id == 1) ;
            {
              _setmsg('Etes vous satisfaitdu service par le restaurant');
            }

            if (_id == 2) ;
            {
              _setmsg('Etes vous satisfait du service par l\'hotel');
            }
            info(msg, ic);
          });
        },
      ),
    );
    //barre de navigation
  }
}
