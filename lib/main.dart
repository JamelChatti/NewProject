import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

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
          title: Text('Tuto StaggeredGridview '),
          centerTitle: true,
          actions: <Widget>[
            Icon(
              Icons.local_florist,
              size: 35,
            ),
          ],
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: StaggeredGridView.countBuilder(
              crossAxisCount: 4,
              mainAxisSpacing: 5.0,
              crossAxisSpacing: 5.0,
              shrinkWrap: true,
              primary: false,
              itemCount: infos.length,
              itemBuilder: (BuildContext context, int index){
                return Showinfo(
                  verif: infos[index]
                );
              },
              staggeredTileBuilder: (int index){
                return StaggeredTile.fit(2);
              }),
        )
    );
  }
}

class Info {
  String image;
  String titles;
  String city;

  Info({this.image, this.titles, this.city});
}

List<Info> infos = [
  Info(
    image: 'https://tse2.mm.bing.net/th?id=OIP.EEFXJj_Zwm_NqzJeHIJE4QHaFU&pid=Api&P=0&w=213&h=154',
    titles: 'Maison culture',
    city: 'Msaken',
  ),
  Info(
    image: 'https://tse1.mm.bing.net/th?id=OIP.cq8NMM3Yrqy_0SFD78B13AHaF7&pid=Api&P=0&w=190&h=153',
    titles: 'Rond point mongala',
    city: 'Msaken',
  ),
  Info(
    image: 'https://tse3.mm.bing.net/th?id=OIP.6FD8jHV0MmHawVYXoBn5BQHaFq&pid=Api&P=0&w=199&h=154',
    titles: 'Grande mosqué',
    city: 'Msaken',
  ),
  Info(
    image: 'https://tse3.mm.bing.net/th?id=OIP._8xBHE02zEkyMqPBosNfWwHaE_&pid=Api&P=0&w=226&h=153',
    titles: 'Municipalité',
    city: 'Msaken',
  ),
  Info(
    image: 'https://tse4.mm.bing.net/th?id=OIP.3AVkjph3fSn8RMlMqUjY7QHaFj&pid=Api&P=0&w=216&h=163',
    titles: 'Rue',
    city: 'Sidibousaid',
  ),
  Info(
    image: 'https://tse1.mm.bing.net/th?id=OIP.ShL2RLjLg8PZmrvnxYvtOgAAAA&pid=Api&P=0&w=235&h=177',
    titles: 'vue de mer',
    city: 'Sidibousaid',
  ),
  Info(
    image: 'https://tse1.mm.bing.net/th?id=OIP.GJuV7AB_KybFpSnDxAes7AHaDF&pid=Api&P=0&w=393&h=165',
    titles: 'oust dar ',
    city: 'Tunis',
  ),
  Info(
    image: 'https://tse1.mm.bing.net/th?id=OIP.jjytyoIm1g3SbyLXQJRGoAHaIV&pid=Api&P=0&w=300&h=300',
    titles: 'Vue de l\'interieur maison ancienne',
    city: 'Tunisie',
  ),
  Info(
    image: 'https://tse3.mm.bing.net/th?id=OIP.ltPRx3cOS-spMeIccipO5QHaLF&pid=Api&P=0&w=300&h=300',
    titles: 'Vue de l\'interieur maison ancienne',
    city: 'Tunisie',
  ),
  Info(
    image: 'https://tse1.mm.bing.net/th?id=OIP.RHRccPCKqZfchoac7fh5pQAAAA&pid=Api&P=0&w=300&h=300',
    titles: 'Vue de l\'interieur maison ancienne',
    city: 'Tunisie',
  ),
];

class Showinfo extends StatelessWidget {
  final Info verif;

  const Showinfo({Key key, this.verif}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(verif.image),

        ),
        Text(verif.titles, style: TextStyle(fontWeight: FontWeight.bold),),
        Text(verif.city, style: TextStyle(fontWeight: FontWeight.bold),),
        SizedBox(height: 30)
      ],
    );
  }
}
