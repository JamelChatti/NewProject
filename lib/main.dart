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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
            length: 2,
            child: Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.blue,
                  title: Text('Tuto SingleChildScrollView '),
                  centerTitle: true,
                  actions: <Widget>[
                    Icon(
                      Icons.local_florist,
                      size: 35,
                    ),
                  ],
                  bottom: TabBar(tabs: <Widget>[
                    Tab(
                      child: Icon(
                        Icons.home,
                        color: Color(0xff622F74),
                        size: 40,
                      ),
                    ),
                    Tab(
                      child: Icon(
                        Icons.pets,
                        color: Color(0xff622F74),
                        size: 40,
                      ),
                    ),
                  ]),
                ),
                body: TabBarView(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: <Widget>[
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Row(
                                children: <Widget>[
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.network(
                                        'https://tse3.mm.bing.net/th?id=OIP.5vtUZIF068A7Ox4nwwlB4wHaLH&pid=Api&P=0&w=300&h=300',
                                        height: 300,
                                        width: 300,
                                      )),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.network(
                                        'https://tse1.explicit.bing.net/th?id=OIP.DxhjYW77E3v2k71GRPAa6AHaEK&pid=Api&P=0&w=286&h=161',
                                        height: 300,
                                        width: 300,
                                      )),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.network(
                                        'https://tse4.mm.bing.net/th?id=OIP.8m7D9rvUrmLrmSqj-l7VSgHaFj&pid=Api&P=0&w=214&h=161',
                                        height: 300,
                                        width: 300,
                                      )),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.network(
                                        'https://tse3.mm.bing.net/th?id=OIP.yAbvtnVcerpb6LfpxWdytQHaHb&pid=Api&P=0&w=300&h=300',
                                        height: 300,
                                        width: 300,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.network(
                                'https://tse4.mm.bing.net/th?id=OIP.G-hDSfttOTRj2_2Z5pSMYQHaEK&pid=Api&P=0&w=286&h=161',
                                height: 400,
                                width: 300,
                              ),
                            ),
                            SizedBox(
                              height: 0,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.network(
                                'https://tse1.mm.bing.net/th?id=OIP.l0aTUHXKLov2Ionv65hYcwHaFs&pid=Api&P=0&w=219&h=170',
                                height: 400,
                                width: 300,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.network(
                                'https://tse1.mm.bing.net/th?id=OIP.8M1SoX2xdufbRSqeXbwMxgHaEK&pid=Api&P=0&w=314&h=177',
                                height: 400,
                                width: 300,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.network(
                                'https://tse3.mm.bing.net/th?id=OIP.FeBKmr3l9kSZI97UphVMBQHaFj&pid=Api&P=0&w=225&h=169',
                                height: 400,
                                width: 300,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.network(
                                'https://tse1.mm.bing.net/th?id=OIP.rbgoISCUJX6l5bX6ppJ6-gHaEo&pid=Api&P=0&w=293&h=184',
                                height: 400,
                                width: 300,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ))));
  }
}
