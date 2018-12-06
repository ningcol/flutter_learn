import 'package:flutter/material.dart';


class Movie extends StatefulWidget {
  @override
  _MovieState createState() => _MovieState();
}

class _MovieState extends State<Movie> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Movie'),
        ),
        body: new Center(
          child: new Text("hhhhhhhhh"),
        ),
      )
    );
  }
}
