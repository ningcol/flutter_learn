import 'package:douabn/model/movieIntroModel.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';



class MovieIntroCell extends StatelessWidget {
  final Subjects model;

  MovieIntroCell({this.model});


  @override
  Widget build(BuildContext context) {

    Widget _cell(){
      return  Container(
        padding: const EdgeInsets.all(12),
        height: 220,
//        color: Colors.grey,
        child: new Row(
          children: <Widget>[
            new Column(
              children: <Widget>[
                new CachedNetworkImage(
                  width: 100,
                  placeholder: new CircularProgressIndicator(),
                  imageUrl: model.images.small,
                )
              ],
            ),
            new Column(
              crossAxisAlignment: CrossAxisAlignment.start, // clomn 是以纵轴的方向进行对齐
              children: <Widget>[
                new Container(
                  color: Colors.green,
                  width: 200,
                  padding: const EdgeInsets.only(bottom: 3, left: 12),
                  child: new Text(
                    model.title,
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
