import 'package:flutter/material.dart';
import 'package:douabn/controller/movie.dart';

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
          onPressed: () {
            Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) {
                  return new SearchPage();
                }
            ));
          },
          child: new Row(
            children: <Widget>[
              new Row(
                children: <Widget>[
                  new Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 24.0
                  ),
                ],
              ),
              new Expanded(
                child: new Text(
                    "海王",
                    style: new TextStyle(color: Colors.grey),
                  ),
              ),
              new Row(
                children: <Widget>[
                  new IconButton(
                    icon: new Icon(Icons.filter_center_focus),
                    color: Colors.grey,
                    padding: const EdgeInsets.all(0),
                    onPressed: (){
                      print("11111");
                    },
                  ),
                  new Padding(padding: const EdgeInsets.only(right: 5)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}



class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();

}

class _SearchPageState extends State<SearchPage> {


  Widget inputTextFiled(){
    return  new Row(
      children: <Widget>[
        new Expanded(
          child: new Container(
              height: 36,
              padding: const EdgeInsets.only(left: 12),
              child: new Material(
                borderRadius: BorderRadius.circular(18.0),
                color: Colors.white,
                child: new Row(
                  children: <Widget>[
                    new Row(
                      children: <Widget>[
                        new Icon(
                            Icons.search,
                            color: Colors.grey,
                            size: 24.0
                        ),
                      ],
                    ),
                    new Expanded(
                      child: new TextField(
                        autofocus: true,
                        decoration: new InputDecoration.collapsed(
                          hintText: "你做的最浪漫的事是什么",
                          hintStyle: new TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
        ),
        new Row(
          children: <Widget>[
            new Container(
              height: 44,
              width: 60,
              child: new FlatButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: new Text(
                  '取消',
                ),
              )
            )
          ],
        )
      ],
    );
  }



  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'testPage',
      theme: new ThemeData(
        primaryColor: Colors.pink,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: inputTextFiled(),
          titleSpacing: 0,  //标题间距
        ),
        body: new Text('adddd'),
      )
    );
  }
}


