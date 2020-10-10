import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';

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
  List<String> listimage = List();
  CarouselSlider instance;

  String a =
      'http://www.somuchviral.com/wp-content/uploads/2014/09/nature-photography27.jpg';
  String b =
      'https://www.gettyimages.fr/detail/photo/ghorfas-image-libre-de-droits/111918955';
  String c =
      'https://www.gettyimages.fr/detail/photo/dromedary-in-the-sahara-desert-of-ksar-ghilane-image-libre-de-droits/509420688';
  String d =
      'http://www.somuchviral.com/wp-content/uploads/2014/09/nature-photography30.jpg';
  String e =
      'http://www.somuchviral.com/wp-content/uploads/2014/09/nature-photography.jpg';
  String f =
      'http://www.somuchviral.com/wp-content/uploads/2014/09/nature-photography2.jpg';
  String g =
      'http://www.somuchviral.com/wp-content/uploads/2014/09/nature-photography3.jpg';
  String h =
      'https://www.gettyimages.fr/detail/photo/roman-amphitheatre-of-el-jem-image-libre-de-droits/108402763';
  String i =
      'https://www.gettyimages.fr/detail/photo/desert-with-moon-and-lake-image-libre-de-droits/900626736';
  String j =
      'https://www.gettyimages.fr/detail/photo/swimming-pool-in-sea-against-clear-sky-image-libre-de-droits/1163882724';
  String k =
      'https://www.gettyimages.fr/detail/photo/tunisia-landscape-image-libre-de-droits/143668207';

  void initState() {
    super.initState();
    listimage.add(a);
    listimage.add(b);
    listimage.add(c);
    listimage.add(d);
    listimage.add(e);
    listimage.add(f);
    listimage.add(g);
    listimage.add(h);
    listimage.add(i);
    listimage.add(j);
    listimage.add(k);
  }

  @override
  Widget build(BuildContext context) {
    instance = CarouselSlider(
        initialPage: 0,
        enableInfiniteScroll: true,
        scrollDirection: Axis.vertical,
        height: MediaQuery.of(context).size.height,
        items: listimage.map((x) {
          return Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(
                  child: Image.network('$x'),
                )
              ],
            ),
          );
        }).toList());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Tuto Slider Carousel Flutter'),
          centerTitle: true,
          actions: <Widget>[
            Icon(
              Icons.local_florist,
              size: 35,
            ),
          ],
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: instance,
            )
          ],
        ));
  }
}
