import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'scollection',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(title: 'Dashboard'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(30),
              child: Text(
                "SCOLLECTION",
                style: TextStyle(fontSize: 40.0, fontStyle: FontStyle.italic),
              ),
            ),
            makeDashboardAlbumItem('Finibus Bonorum et Malorum'),
            makeDashboardAlbumItem('Quia consequuntur magni'),
            makeDashboardAlbumItem('Ut enim ad minima veniam'),
          ],
        ),
      ),
    );
  }
}

Card makeDashboardAlbumItem(String title) {
  final rng = new Random();
  final totalItens = rng.nextInt(1000);
  final qtdItens = rng.nextInt(totalItens);
  return Card(
    elevation: 1.0,
    margin: EdgeInsets.all(8.0),
    child: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(220, 220, 220, 1.0)),
        child: Card(
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(title,
                          style: TextStyle(
                              fontSize: 20, 
                              fontStyle: FontStyle.italic, 
                              fontWeight: FontWeight.bold,
                              )),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text('$qtdItens of $totalItens itens'),
                  ],
                ),
              ],
            ),
          ),
        )),
  );
}
