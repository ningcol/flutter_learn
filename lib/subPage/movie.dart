import 'package:flutter/material.dart';

import 'package:douabn/model/movie_tro_model.dart';

class Movie extends StatefulWidget {
  @override
  _MovieState createState() => _MovieState();
}

class _MovieState extends State<Movie> with SingleTickerProviderStateMixin {

  TabController _tabController;
//  MovieIntroModel _mo;
//  MovieIntroCell _introCell;


  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 3);

//    _mo.name = "张三";
//    _mo.age = "22";
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("电影"),
        bottom: new TabBar(
          controller: _tabController,
          tabs: <Widget>[
            new Tab(text: "电影"),
            new Tab(text: "其他"),
            new Tab(text: "TOP"),
          ],
        ),
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
//          new Center(child: new Text("电影")),
          _buildListView(),
          new Center(child: new Text("其他")),
          new Center(child: new Text("TOP")),
        ],
      )
    );
  }

  Widget _buildListView(){
    return new ListView(
      children: <Widget>[
        _view(),
        new Center(child: new Text("222")),
        new Center(child: new Text("333")),
      ],
    );
  }


  Widget _view(){
    return new Container(
      height: 220,
      color: Colors.black12,
      child: new Row(
        children: <Widget>[
          new Expanded(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Container(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: new Text(
                      "asdfasdf",
                      style: new TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  new Container(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: new Text(
                      "adsfads水淀粉",
                      style: new TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],

              )
          )
        ],
      ),
    );
  }



}

class MovieIntroCell{
  MovieIntroCell({MovieIntroModel model}){
    new Container(
      height: 220,
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: new Text(
                    model.name,
                    style: new TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                new Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: new Text(
                    model.age,
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],

            )
          )
        ],
      ),
    );


      model.name = "asdf";
      model.age = "adsf";

      print(model.age);

  }


}