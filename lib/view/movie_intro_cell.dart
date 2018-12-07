import 'package:douabn/model/movie_tro_model.dart';
import 'package:flutter/material.dart';




class MovieIntroCell extends StatelessWidget {
  final MovieIntroModel model;

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
                new Image.asset("images/bg.png",
                  width: 100,
                  fit: BoxFit.cover,
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
                    "类型：" + model.type,
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
                    "评分：" + model.score,
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
}
