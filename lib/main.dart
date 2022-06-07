import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int baa = 0;
  String janyOkkuchu = 'Aruuke';

  double euroBaa = 87.55;
  num enChonTurNum = 12.9;

  void _incrementCounter() {
    // euroBaa = 12.55;
    // euroBaa = 12.0;
    // enChonTurNum = 7.05;
    // enChonTurNum = 7;
    // 00100100;
    // log('enChonTurNum ==> $enChonTurNum');

    // log('doubleBaalar ==> $euroBaa');
  }

  bool like = false;
  List<bool> liketar = <bool>[];
  void likeKur() {
    liketar.add(like);

    setState(() {});
  }

  @override
  void initState() {
    List<String> okuuchulardynAty = <String>[
      'Manas', // 0
      'Mustafa', // 1
      'Temuralan', // 2
      'Kuba', //3
      janyOkkuchu, //4
      'Seytek'
    ];
    okuuchulardynAty.add('janibek');
    okuuchulardynAty.add('Madina');
    okuuchulardynAty.add('janibek');
    log('okuuchulardynAty==> ${okuuchulardynAty}');
    List<int> okuuchulardynBaasy = [
      2,
      3,
      5,
    ];
    _incrementCounter();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: likeKur,
              child: const Icon(
                Icons.favorite_border,
                size: 150.0,
              ),
            ),
            Text(
              '${liketar.length} ',
              style: TextStyle(fontSize: 40),
            ),
            Text(
              '',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
