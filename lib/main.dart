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
  List<BottomNavigationBarItem> _item;
  int _id = 0;
  String value = '';

  void initState() {
    _item = new List();
    _item.add(BottomNavigationBarItem(
        icon: Icon(Icons.person, color: Colors.purple),
        title: Text('Prsonne')));
    _item.add(BottomNavigationBarItem(
        icon: Icon(Icons.wallpaper, color: Colors.purple),
        title: Text('Vendredi')));
    _item.add(BottomNavigationBarItem(
        icon: Icon(Icons.add_shopping_cart, color: Colors.purple),
        title: Text('Shopping')));
    _item.add(BottomNavigationBarItem(
        icon: Icon(Icons.airport_shuttle, color: Colors.purple),
        title: Text('Un bus')));
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ButtonTheme(
              minWidth: 200.0,
              height: 75.0,
              buttonColor: Colors.grey,
              child: RaisedButton(
                onPressed: null,
                child: Text(
                  'Cliquer ici',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
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
                color: Colors.red,
                fontSize: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _item,
        currentIndex: _id,
        onTap: (int item) {
          setState(() {
            _id = item;
            int a = _id+1;
            value = 'clic sur ${a.toString()}';
          });
        },
      ),
    );
    //barre de navigation
  }
}
