import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pageinfo {
  final String title;
  final String image;
  final String description;
  const Pageinfo(this.title, this.image, this.description);
}
final List<Pageinfo> pages=[
  Pageinfo('Meilleur modele N1', 'images/th5.png', '1ere vue'),
  Pageinfo('Meilleur modele N2', 'images/th5.png', '2eme vue'),
  Pageinfo('Meilleur modele N3', 'images/th6.png', '3eme vue'),
  Pageinfo('Meilleur modele N4', 'images/th7.png', '4eme vue'),
  Pageinfo('Meilleur modele N5', 'images/th8.png', '5eme vue'),

];
class Pagewidget extends StatefulWidget {
  final Pageinfo entry;

  Pagewidget(this.entry);
  @override
  _PagewidgetState createState() => _PagewidgetState();
}

class _PagewidgetState extends State<Pagewidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(widget.entry.title, style: TextStyle(color: Colors.blue,
              fontSize: 18),)
            ],
          ),
          SizedBox(height: 10,),
          Image.asset(widget.entry.image,fit: BoxFit.cover,),
          SizedBox(height: 10,),
          Text(widget.entry.description, style: TextStyle(color: Colors.blue,
              fontSize: 18, fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}
