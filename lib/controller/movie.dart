import 'package:flutter/material.dart';
import 'package:douabn/view/movie_intro_cell.dart';
import 'package:douabn/model/movie_tro_model.dart';


class Movie extends StatefulWidget {
  @override
  _MovieState createState() => _MovieState();
}

class _MovieState extends State<Movie> with SingleTickerProviderStateMixin {

  TabController _tabController;
  List<Map<String,String>> _list ;
  List<MovieIntroModel> _modelList;
  
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 3);

    _modelList = new List();

    _list = [
      {
        "title" : "无名之辈",
        "type" : "剧情 喜剧",
        "year" : "2018",
        "score" : "6.0"
      },
      {
        "title" : "无名之辈1",
        "type" : "剧情 喜剧",
        "year" : "2088",
        "score" : "990.0"
      },
      {
        "title" : "盗梦空间",
        "type" : "科幻 动作",
        "year" : "2010",
        "score" : "9.0"
      },
      {
        "title" : "盗梦空间1",
        "type" : "科幻 动作1",
        "year" : "20101",
        "score" : "10"
      },
      {
        "title" : "盗梦空间2",
        "type" : "科幻 动作2",
        "year" : "2011",
        "score" : "1.01"
      },
      {
        "title" : "盗梦空间3",
        "type" : "科幻 动作3",
        "year" : "2008",
        "score" : "5.1"
      },
    ];

    for (var value in _list) {
       _modelList.add(new MovieIntroModel.fromJson(value));
    }

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
    return new ListView.builder(
      itemCount: _modelList.length,
      itemBuilder: (context, index){
          return MovieIntroCell(model: _modelList[index]);
      },
    );
  }



}
