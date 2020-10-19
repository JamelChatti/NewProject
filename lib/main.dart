import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
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

  int maxstar= 5;
  double rating1=0;
  double rating2=2;
  double rating3=4;
  double rating4=3;

  Widget detail(String image, String hotel, double rate, Color color) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Image.network(
                  image,
                  fit: BoxFit.fill,
                  width: 340,
                  height: 300,
                )
              ],
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Text(
                  hotel,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                StarRating(size: 40.0,
                  color: color,
                  borderColor: color,
                  rating: rate,
                  starCount: maxstar,
                  onRatingChanged: (rate){
                  setState(() {
                    if(color== Colors.blue ){
                      rating1=rate;
                    }
                    if(color== Colors.green ){
                      rating2=rate;
                    }
                    if(color== Colors.purple ){
                      rating3=rate;
                    }
                    if(color== Colors.red ){
                      rating4=rate;
                    }

                  });
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Tuto Rating '),
          centerTitle: true,
          actions: <Widget>[
            Icon(
              Icons.local_florist,
              size: 35,
            ),
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              detail( 'https://tse3.mm.bing.net/th?id=OIP.7vNRZsWMzjHGdnI1e3R2SAHaDR&pid=Api&P=0&w=350&h=156',
                  'Hotel de luxe',
                  rating1, Colors.blue),
              detail( 'https://tse4.mm.bing.net/th?id=OIP.bn-fTqkNQGF1BW4NsiMgvwHaC9&pid=Api&P=0&w=404&h=162',
                  'Hotel prestige',
                  rating2, Colors.green),
              detail( 'https://tse2.mm.bing.net/th?id=OIP.zi6hidDxa2dYiJAc00hLlAHaFX&pid=Api&P=0&w=220&h=160',
                  'Hotel King',
                  rating3, Colors.purple),
              detail( 'https://tse2.mm.bing.net/th?id=OIP.7RDFtwNmlgkt0T16IlZ0iQHaFU&pid=Api&P=0&w=248&h=179',
                  'Hotel Palace',
                  rating4, Colors.red),
            ],
          ),
        ));
  }
}
