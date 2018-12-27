import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_biu/net/NetWorkUtil.dart';

class SecondTab extends StatefulWidget {
  @override
  _SecondTabState createState() => _SecondTabState();
}

class _SecondTabState extends State<SecondTab> {
  @override
  Widget build(BuildContext context) {
    var usernameController = new TextEditingController();
    var userPwdController = new TextEditingController();

    return new Scaffold(
      //避免键盘弹出，界面超出屏幕
      resizeToAvoidBottomPadding: false,
      appBar: new AppBar(
        title: new Text('第二个界面'),
        iconTheme: new IconThemeData(color: Colors.red),
      ),
      body: new Column(
        //MainAxisSize在主轴方向占有空间的值，默认是max。还有一个min
        mainAxisSize: MainAxisSize.max,
        //MainAxisAlignment：主轴方向上的对齐方式，会对child的位置起作用，默认是start。
        mainAxisAlignment: MainAxisAlignment.start,
        //里面的控件肯定不止一个
        children: <Widget>[
          //上面的logo图
          new Padding(
              padding: new EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 10.0),
              child: Container(
                child: new Image.network(
                  'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1545912308837&di=5423182586ff7c6513b1b92c013ffab8&imgtype=0&src=http%3A%2F%2Fimg.pptjia.com%2Fimage%2F20180117%2Ff4b76385a3ccdbac48893cc6418806d5.jpg',
                  scale: 1.0,
                ),
                width: 300.0,
                height: 200.0,
                //                color: Colors.lightBlue,
              )),

          //第一个输入框
          //注意这个给控件设置Padding的方式，先创建padding，控件再放里面
          Padding(
            padding: EdgeInsets.all(10.0),
            //用户名输入框
            child: TextField(
              //控制器
              controller: usernameController,
              maxLength: 11,
              maxLines: 1,
              //是否自动更正
              autocorrect: true,
              //是否自动对焦
              //              autofocus: true,
              decoration: new InputDecoration(
                  hintText: "请输入用户名",
                  helperText: "用户名",
                  icon: new Icon(Icons.account_box)),
              onChanged: (text) {
                //内容改变的回调
                print('change $text');
              },
              onSubmitted: (text) {
                //内容提交(按回车)的回调
                print('submit $text');
              },
            ),
          ),
          //第二个输入框
          Padding(
            padding: EdgeInsets.all(10.0),
            //密码输入框
            child: TextField(
              //控制器
              controller: userPwdController,
              maxLength: 20,
              maxLines: 1,
              //是否自动更正
              autocorrect: true,
              //是否自动对焦
              //              autofocus: true,
              //是否是密码
              obscureText: true,
              //修改其他属性，
              decoration: new InputDecoration(
                  hintText: "请输入密码",
                  helperText: "密码",
                  icon: new Icon(Icons.confirmation_number)),
              //输入类型
              keyboardType: TextInputType.number,
              onChanged: (text) {
                //内容改变的回调
                print('change $text');
              },
              onSubmitted: (text) {
                //内容提交(按回车)的回调
                print('submit $text');
              },
            ),
          ),
          new Container(
            width: 800.0,

            margin: new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
            padding: new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
            //类似cardview
            child: new Card(
              color: Colors.blueAccent,
              elevation: 5.0,
              child: new FlatButton(
                  disabledColor: Colors.grey,
                  disabledTextColor: Colors.black,
                  //                  color: Colors.blueAccent,
                  onPressed: () {
                    if (usernameController.text.isEmpty) {
                      Scaffold.of(context).showSnackBar(
                          new SnackBar(content: Text("用户名不能为空哦~",),
                            action: SnackBarAction(label: "我知道啦~", onPressed: (){

                            }),

                          ));
                    } else if (userPwdController.text.isEmpty) {
                      Scaffold.of(context).showSnackBar(
                          new SnackBar(content: Text("密码不能为空哦~",),
                            action: SnackBarAction(label: "我知道啦~", onPressed: (){

                            }),

                          ));
                    } else {
                      // str is not empty, do something
                      showDialog(
                          context: context,
                          builder: (_) {
                            return AlertDialog(
                              content: Text(usernameController.text +
                                  "\n" +
                                  userPwdController.text),
                            );
                          });
                    }
                  },
                  child: new Padding(
                    padding: new EdgeInsets.all(10.0),
                    child: new Text(
                      '登录',
                      style: new TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                  )),
            ),
          )
        ],
      ),
    );

  }



}
