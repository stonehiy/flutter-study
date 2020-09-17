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
        elevation: 5.0,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          constraints: BoxConstraints(),
          // margin: const EdgeInsets.all(10.0),
          padding: const EdgeInsets.all(0.0),
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
                  "disabled button",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              // SizedBox(
              //   height: 10.0,
              // ),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(MaterialRoute.ROUTE_PAGE_List);
                },
                child: Text(
                  "list page",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(MaterialRoute.ROUTE_PAGE_GRID);
                },
                child: Text(
                  "grid page",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
              ),
              RaisedButton(
                color: Colors.blue,
                child: Text(
                  "ios style page",
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
