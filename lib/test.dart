import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: 'MyApp',
    home: new MyScaffold()
  ));
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new Column(
        children: <Widget>[
          new MyAppBar(
            title: new Text(
              "示例标题",
              style: Theme.of(context).primaryTextTheme.title,
            ),
          ),
          new Expanded(
              child: new Center(
            child: new Text("hello world"),
          ))
        ],
      ),
    );
  }
}

class MyAppBar extends StatelessWidget {
  // Widget子类中的字段往往都会定义为"final"
  final Widget title;

  MyAppBar({this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0, // 单位是逻辑上的像素（并非真实的像素，类似于浏览器中的像素）
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      decoration: new BoxDecoration(color: Colors.blue[500]),
      // Row 是水平方向的线性布局（linear layout）
      child: new Row(
        //列表项的类型是 <Widget>
        children: <Widget>[
          new IconButton(
            icon: new Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null, //null 会禁用 button
          ),
          //Expanded表示会撑满布局
          new Expanded(
            child: title,
          ),
          new IconButton(
            icon: new Icon(Icons.android),
            tooltip: "search",
            onPressed: null,
          )
        ],
      ),
    );
  }
}
