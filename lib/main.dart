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
  int initialstep = 0;
  List<Step> steps = [
    Step(
      title: Text(
        'Confirmer nom et prénom',
        style: TextStyle(color: Colors.blue),
      ),
      content: Text('Chatti '),
      isActive: true,
      subtitle: Text('Etape1'),
    ),
    Step(
      title: Text(
        'Confirmer votre adresse',
        style: TextStyle(color: Colors.purple),
      ),
      content: Text('Rue Hedi Chaker '),
      isActive: true,
      subtitle: Text('Etape2'),
    ),
    Step(
      title: Text(
        'Confirmer votre numero de téléphone',
        style: TextStyle(color: Colors.green),
      ),
      content: Text('+216470158'),
      isActive: true,
      subtitle: Text('Etape3'),
    ),
    Step(
      title: Text(
        'Indiquer votre sexe',
        style: TextStyle(color: Colors.red),
      ),
      content: Text('Masculin'),
      isActive: true,
      subtitle: Text('Etape4'),
    ),
    Step(
      title: Text(
        'MERCI!',
        style: TextStyle(color: Colors.red),
      ),
      content: Image.network('https://tse2.mm.bing.net/th?id=OIP.69i8qHQdyRtS0X_4MpmgrQAAAA&pid=Api&P=0&w=300&h=300'),
      isActive: true,
      state: StepState.complete,
      subtitle: Text('FIN'),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Tuto Stepper '),
          centerTitle: true,
          actions: <Widget>[
            Icon(
              Icons.local_florist,
              size: 35,
            ),
          ],
        ),
        body: Stepper(
          currentStep: this.initialstep,
          steps: steps,
          type: StepperType.vertical,
          onStepTapped: (Step){
            setState(() {
              initialstep=Step;
            });
          },
          onStepContinue: () {
            setState(() {
              if(initialstep<steps.length-1){
                initialstep=initialstep+1;
    }
              else{
                initialstep=0;
              }
            });
          },
          onStepCancel: () {
            setState(() {
              if(initialstep>0){
                initialstep=initialstep-1;
              }
              else{
                initialstep=0;
              }
            });

          },
    ));
  }
}
