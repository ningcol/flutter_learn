import 'package:douabn/subPage/book.dart';
import 'package:douabn/subPage/movie.dart';
import 'package:flutter/material.dart';


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {

  int _currentIndex = 0;
  List<NavigationIconView> _navigationViews;  // 底部图标按钮区域
  List<StatefulWidget> _pageList;
  StatefulWidget _currentPage;


  // 定义一个空的设置状态值的方法
  void _rebuild() {
    setState((){
    });
  }

  @override
  void initState() {
    super.initState();

    _navigationViews = <NavigationIconView>[
      new NavigationIconView(icon: new Icon(Icons.assessment), title: new Text("电影")), // vsync 默认属性和参数
      new NavigationIconView(icon: new Icon(Icons.all_inclusive), title: new Text("图书")),
//      new NavigationIconView(icon: new Icon(Icons.add_shopping_cart), title: new Text("市场"), vsync: this),
//      new NavigationIconView(icon: new Icon(Icons.add_alert), title: new Text("通知"), vsync: this),
//      new NavigationIconView(icon: new Icon(Icons.perm_identity), title: new Text("我的"), vsync: this),
    ];

    // 给每一个按钮区域加上监听
//    for (NavigationIconView view in _navigationViews) {
//      view.controller.addListener(_rebuild);
//    }

    _pageList = [
      new Movie(),
      new Book()
    ];

    _currentPage = _pageList[_currentIndex];
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        body: new Center(
          child: _currentPage,
        ),
        bottomNavigationBar : _getNavigationBar(),
      ),
      theme: new ThemeData(
        primarySwatch: Colors.pink,
      ),
    );
  }


  _getNavigationBar(){
    return  BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index){
          if (_currentIndex == index) return; //if you select the same index will return
          setState(() {
//            _navigationViews[_currentIndex].controller.reverse();
            _currentIndex = index;
            _currentPage = _pageList[_currentIndex];
//            _navigationViews[_currentIndex].controller.forward();
          });
        },
        items: _navigationViews.map((NavigationIconView view) => view.item).toList()
    );
  }
}



class NavigationIconView {

  // 创建两个属性，一个是 用来展示 icon， 一个是动画处理
  final BottomNavigationBarItem item;
//  final AnimationController controller;


  //  (重定向构造函数 有时候构造函数的目的只是重定向到该类的另一个构造函数。重定向构造函数没有函数体，使用冒号:分隔。)
  // 创建 NavigationIconView 需要传入三个参数， icon 图标，title 标题， TickerProvider
  NavigationIconView({Widget icon, Widget title}):
        item = new BottomNavigationBarItem(
          icon: icon,
          title: title,
        );
//        controller = new AnimationController(
//            duration: kThemeAnimationDuration,    // 设置动画持续的时间
//            vsync: vsync                          // 默认属性和参数
//        );

}

