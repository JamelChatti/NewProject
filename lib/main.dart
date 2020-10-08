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
  Widget resto(String menu, Color color, String image) {
   return Container(
      color: color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            image,
            height: 150,
            width: 150,
          ),
          Text(
            menu,
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Tuto Silver AppBar '),
          centerTitle: true,
          actions: <Widget>[
            Icon(
              Icons.local_cafe,
              size: 35,
            ),
          ],
        ),
        body:  CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  title: Text(
                    'Tuto Silver AppBar',
                    style: TextStyle(fontSize: 15, color: Colors.blue),
                  ),
                  centerTitle: true,
                  pinned: true,
                  floating: true,
                  expandedHeight: 200,
                  backgroundColor: Colors.transparent,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Image.asset(
                      'images/th6.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  actions: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.local_cafe,
                        color: Colors.blue,
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
                SliverFixedExtentList(
                  itemExtent: 150,
                  delegate: SliverChildListDelegate(
                    [

                     resto('3assida', Colors.green, 'images/3ss.png'),
                            resto('Couscous', Colors.blue, 'images/th8.png'),
                           resto('Mouloukhia', Colors.red, 'images/mou.png'),
                            resto('Salade', Colors.yellow, 'images/sala.png'),
                            resto('Mesfouf', Colors.green, 'images/mes.png'),
                            resto('Riz jerbi', Colors.amber, 'images/riz.png'),
                            resto('Fricasse', Colors.lightBlueAccent, 'images/fri.png'),
                            resto('Michoui', Colors.purpleAccent, 'images/mich.png'),
                            resto('Leblebi', Colors.lightGreen, 'images/lab.png'),
                            resto('Mhamsa', Colors.grey, 'images/mha.png'),
                            resto('Farfoucha', Colors.pinkAccent, 'images/th.png'),
                  ],),
                )
              ],
            )

//         ListView(
//           children:<Widget> [
// imagecarousel,
//           Form(
//           key: formkey,
//           child: Center(
//             child: Column(
//               children: <Widget>[
//                 Text(
//                   value,
//                   style: TextStyle(fontSize: 20, color: Colors.blue),
//                   textAlign: TextAlign.center,
//                 ),
//                 TextFormField(
//                   decoration: InputDecoration(
//                       labelText: 'Nom',
//                       hintText: 'Entrer votre nom',
//                       icon: Icon(
//                         Icons.person,
//                         color: Colors.deepPurple,
//                         size: 50,
//                       )),
//                   validator:(val)=>val.length==0 ? 'Valider votre nom' : null ,
//                   onSaved:(val)=> name=val ,
//                   keyboardType: TextInputType.text,
//                   autocorrect: true,
//                   autofocus: true,
//                   onChanged: affichage,
//                   //onSubmitted: submit,
//                 ),
//                 TextFormField(
//                   decoration: InputDecoration(
//                       labelText: 'Phone',
//                       hintText: 'Entrer votre numero de Téléphone',
//                       icon: Icon(
//                         Icons.phone,
//                         color: Colors.deepPurple,
//                         size: 50,
//                       )),
//                   validator:(val)=>val.length==0 ? 'Valider votre numero de telephone' : null ,
//                   onSaved:(val)=> phone=val ,
//                   keyboardType: TextInputType.number,
//                 ),
//                 TextFormField(
//                   decoration: InputDecoration(
//                       labelText: 'Mot de passe',
//                       hintText: 'Entrer votre Mot de passe',
//                       icon: Icon(
//                         Icons.lock,
//                         color: Colors.red,
//                         size: 50,
//                       )),
//                   validator:(val)=>val.length==0 ? 'Valider le mot de passe' : null ,
//                   onSaved:(val)=> mdp=val ,
//                 ),
//                 RaisedButton(
//                   child:Text('Validation', style: TextStyle(color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold),) ,
//                   onPressed: validationform,
//                 )
//               ],
//             ),
//           ),
//         )
//       ]//barre de navigation
//         ),
               );
  }
}
