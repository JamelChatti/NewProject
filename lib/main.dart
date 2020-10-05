import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

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

  Widget imagecarousel = Container(
    height: 250,
    child: Carousel(
    boxFit: BoxFit.fill,
    images: [
      AssetImage('images/th9.png'),
      AssetImage('images/th10.png'),
      AssetImage('images/th11.png'),
      AssetImage('images/th12.png'),
      AssetImage('images/th13.png'),
      AssetImage('images/th14.png'),
      AssetImage('images/im15.png'),
      AssetImage('images/im16.png'),
    ],
    ),
  );

  String value = ' ';
  String name = ' ';
  String phone = ' ';
  String mdp = ' ';
  final formkey=new GlobalKey<FormState>();

  validationform(){
   if (formkey.currentState.validate()){
     formkey.currentState.save();
     debugPrint('$name');
     debugPrint('$phone');
     debugPrint('$mdp');
     formkey.currentState.reset();
   }
   else{
     debugPrint('error....'); 
   }
  }


  void affichage(String b) {
    setState(() {
      value = 'Bienvenue $b';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.blue,
        //   title: Text('Tuto DataTable'),
        //   centerTitle: true,
        //   actions: <Widget>[
        //     Icon(
        //       Icons.desktop_mac,
        //       size: 35,
        //     ),
        //   ],
        // ),
        body: ListView(
          children:<Widget> [
imagecarousel,
          Form(
          key: formkey,
          child: Center(
            child: Column(
              children: <Widget>[
                Text(
                  value,
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                  textAlign: TextAlign.center,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Nom',
                      hintText: 'Entrer votre nom',
                      icon: Icon(
                        Icons.person,
                        color: Colors.deepPurple,
                        size: 50,
                      )),
                  validator:(val)=>val.length==0 ? 'Valider votre nom' : null ,
                  onSaved:(val)=> name=val ,
                  keyboardType: TextInputType.text,
                  autocorrect: true,
                  autofocus: true,
                  onChanged: affichage,
                  //onSubmitted: submit,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Phone',
                      hintText: 'Entrer votre numero de Téléphone',
                      icon: Icon(
                        Icons.phone,
                        color: Colors.deepPurple,
                        size: 50,
                      )),
                  validator:(val)=>val.length==0 ? 'Valider votre numero de telephone' : null ,
                  onSaved:(val)=> phone=val ,
                  keyboardType: TextInputType.number,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Mot de passe',
                      hintText: 'Entrer votre Mot de passe',
                      icon: Icon(
                        Icons.lock,
                        color: Colors.red,
                        size: 50,
                      )),
                  validator:(val)=>val.length==0 ? 'Valider le mot de passe' : null ,
                  onSaved:(val)=> mdp=val ,
                ),
                RaisedButton(
                  child:Text('Validation', style: TextStyle(color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold),) ,
                  onPressed: validationform,
                )
              ],
            ),
          ),
        )
      ]//barre de navigation
        ),
    );

  }
}
