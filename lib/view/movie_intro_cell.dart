import 'package:douabn/model/movieIntroModel.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';



class MovieIntroCell extends StatelessWidget {
  final Subjects model;

  MovieIntroCell({this.model});


  @override
  Widget build(BuildContext context) {

    Widget textSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Text(
          "Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.",
          softWrap: true),//softWrap: true 文本是否在换行符处中断
    );


    Widget aaaaa(){
      return Container(
        padding: const EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            new Text(
                "Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.",
                softWrap: true
            ),
          ],
        )
      );
    }

    Widget subTitle(){
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start, // clomn 是以纵轴的方向进行对齐
        children: <Widget>[
          new Container(
            color: Colors.green,
//                  width: 200,
            padding: const EdgeInsets.only(bottom: 3, left: 12,right: 12,top: 10),
            child: new Text(
              model.title+"阿斯顿发阿斯顿发发送送到",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: new TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          new Container(
            padding: const EdgeInsets.only(bottom: 3.0, left: 12),
            child: new Text(
              "类型：" + _type(),
              style: new TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          new Container(
            padding: const EdgeInsets.only(bottom: 3.0, left: 12),
            child: new Text(
              "年份：" + model.year,
              style: new TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          new Container(
            padding: const EdgeInsets.only(bottom: 3.0, left: 12),
            child: new Text(
              "评分：" + model.rating.average.toString(),
              style: new TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      );
    }




    Widget _cell(){
      return  Container(
        padding: const EdgeInsets.all(12),
        height: 220,
//        color: Colors.grey,
        child: Column(
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new CachedNetworkImage(
                  width: 100,
                  placeholder: new CircularProgressIndicator(),
                  imageUrl: model.images.small,
                ),
                new Expanded(
                  child: subTitle(),
                )
              ],
            ),
          ],
        ),
      );
    }

    return new Card(
      // card形状设置顶部圆形弧度12，底部没有
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(0.0))
      ),
      // 设置阴影
      elevation: 0.0,
      // 设置边距
      margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
      child: new InkWell(
        onTap: (){},
        child: _cell(),
      ),
    );


  }

  String _type() {
    String _genres = "";
    for (var value in model.genres) {
      _genres = _genres + value + "/ ";
    }
    return _genres;
  }







}
