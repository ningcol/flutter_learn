import 'package:flutter/material.dart';

class SearchTextField extends StatefulWidget {
  @override
  _SearchTextFieldState createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  @override
  Widget build(BuildContext context) {
    return  new Container(
      height: 36,
      child: new Material(
        borderRadius: BorderRadius.circular(18.0),
        color: Colors.white,
        child: new MaterialButton(
          padding: const EdgeInsets.only(left: 10),
          highlightColor: null,
          onPressed: () {},
          child: new Row(
            children: <Widget>[
              new Icon(
                Icons.search,
                color: Colors.grey,
                size: 24.0
              ),
              new Text(
                "海王",
                style: new TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
