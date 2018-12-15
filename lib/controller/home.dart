import 'package:flutter/material.dart';
import 'package:douabn/view/searchTextField.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new SearchTextField(),
        bottom: new TabBar(
          controller: _tabController,
          indicatorPadding: const EdgeInsets.only(bottom: 8),
          indicatorSize: TabBarIndicatorSize.label,
          tabs: <Widget>[
            new Tab(text: '动态'),
            new Tab(text: '推荐'),
          ],
        ),
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          _listView(),
          new Center(
            child: new Text('推荐'),
          ),
        ],
      ),

    );
  }

  Widget _listView() {
    return new ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index){
        return new Text('index'+ index.toString());
      },
    );
  }








}
