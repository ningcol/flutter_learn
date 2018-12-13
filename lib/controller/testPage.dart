import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
       return new Scaffold(
          appBar: new AppBar(
            title: new Text('Welcome to Book'),
          ),
          body: new Center(
            child: new FlatButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: new Text('pop'),
            ),
          )
      );


//    return new MaterialApp(
//      title: 'testPage',
//      theme: new ThemeData(
//        primaryColor: Colors.black,
//      ),
//      home: new Scaffold(
//          appBar: new AppBar(
//            title: new Text('Welcome to Book'),
//          ),
//          body: new Center(
//            child: new FlatButton(
//              onPressed: () {
//                Navigator.of(context).pop();
//              },
//              child: new Text('pop'),
//            ),
//          )
//      )
//    );


  }
}
