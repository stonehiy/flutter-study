import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/page/material/route.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  String _title = "标题";

  HomePage(this._title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        elevation: 0.0,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          constraints: BoxConstraints(),
          // margin: const EdgeInsets.all(10.0),
          padding: const EdgeInsets.all(8.0),
          // color: Colors.yellow,
          // decoration: BoxDecoration(
          //   color: Colors.greenAccent,
          // ),
          width: 1000.0,
          height: 1000.0,
          //alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const RaisedButton(
                onPressed: null,
                child: Text(
                  "按钮0-不可点击",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(MaterialRoute.ROUTE_PAGE_List);
                },
                child: Text(
                  "按钮1-list page",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
              ),
              RaisedButton(
                color: Colors.blue,
                child: Text(
                  "ios风格页面",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(MaterialRoute.ROUTE_PAGE_IOS);
                },
              ),
            ],
          ),
          //transform: Matrix4.rotationY(0.8),
        ),
      ),
    );
  }
}
