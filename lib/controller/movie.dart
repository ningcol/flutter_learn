import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:douabn/view/movie_intro_cell.dart';
import 'package:douabn/model/movieIntroModel.dart';
import 'package:douabn/view/searchTextField.dart';

import 'package:http/http.dart' as http;


class Movie extends StatefulWidget {
  @override
  _MovieState createState() => _MovieState();
}

class _MovieState extends State<Movie> with SingleTickerProviderStateMixin {

  TabController _tabController;
  List<Subjects> _subjects = [];
  MovieIntroModel _movieIntroModel;


  
  void initState(){
    super.initState();
    _tabController = new TabController(vsync: this, length: 3);

    _loadData();

  }

  _loadData() async{
    String url = "https://api.douban.com/v2/movie/in_theaters";
    http.Response response = await http.get(url);

    _movieIntroModel = MovieIntroModel.fromJson(json.decode(response.body));

    setState(() {
       _subjects = _movieIntroModel.subjects;
    });

  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new SearchTextField(),
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.yellow,
          indicatorWeight: 2,
          indicatorSize: TabBarIndicatorSize.label,
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
          _buildListView(),
          new Center(
            child: new GestureDetector(
                child: new Text('我是状态为0的item'),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return new AlertDialog(
                        title: new Text(
                          'ListViewDemo',
                          style: new TextStyle(
                            color: Colors.black54,
                            fontSize: 18.0,
                          ),
                        ),
                        content: new Text('哈哈哈！当前 item 状态为 0'),
                      );
                    },
                  );
                },
            )
          ),
          new Center(child: new Text("TOP")),
        ],
      ),
      backgroundColor: Colors.grey,
    );
  }

  Widget _buildListView(){
    return new ListView.builder(
      itemCount: _subjects.length,
      itemBuilder: (context, index){
          return MovieIntroCell(model: _subjects[index]);
      },
    );
  }
  

}
