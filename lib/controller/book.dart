import 'package:flutter/material.dart';
import 'package:douabn/controller/testPage.dart';

class Book extends StatefulWidget {
  @override
  _BookState createState() => _BookState();
}

class _BookState extends State<Book> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "aaaaa",
        theme: new ThemeData(
          primaryColor: Colors.green,
        ),
        home: new Scaffold(
            appBar: new AppBar(
              title: new Text('Welcome to Book'),
            ),
            body: new Center(
              child: new FlatButton(
                onPressed: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (context) {
                        return new TestPage();
                      }
                  ));
                },
                child: new Text('点击push'),
              ),
            )
        )
    );
  }


}