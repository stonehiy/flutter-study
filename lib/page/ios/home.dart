import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/page/ios/dialog.dart';
import 'package:flutter_app/page/ios/route.dart';

class IOSApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _iosMain();
  }

  Widget _iosMain() {
    return CupertinoApp(
      // title: "IOS style",
      theme: CupertinoThemeData(
        primaryColor: Colors.white,
        // primaryColorDark: Colors.black,
        // primaryColorLight: Colors.white
      ),

      home: IOSHomePage("IOS style"),
      //MyHomePage(title: 'Flutter Demo Home Page'),
      routes: IOSRoute.route,
    );
  }
}

class IOSHomePage extends StatelessWidget {
  String _title = "标题";

  IOSHomePage(this._title);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
          // padding: EdgeInsetsDirectional.fromSTEB(9.0,30.0,10.0,0.0),
          backgroundColor: Colors.blue,
          // leading: Text("leading"),
          middle: Text(_title),
          trailing: Text("trailing")),
      backgroundColor: Colors.white,
      child: Container(
        margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
        padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        height: 1000.0,
        width: 1000.0,
        child: Column(
          children: <Widget>[
            CupertinoButton(
              padding: EdgeInsets.all(10.0),
              color: Colors.blue,
              child: Text(
                "ios页面跳转",
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(IOSRoute.ROUTE_PAGE_IOS2);
              },
            ),
            SizedBox(
              height: 15.0,
            ),
            CupertinoButton(
              color: Colors.blue,
              child: Text("ios风格弹框"),
              onPressed: () {
                //Navigator.of(context).pushNamed('page/MyCupertinoDialog');
                showCupertinoDialog(
                    context: context,
                    builder: (context) {
                      return MyCupertinoDialog();
                    });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class IOSHomePage2 extends StatelessWidget {
  String _title = "标题2";

  IOSHomePage2(this._title);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
          // padding: EdgeInsetsDirectional.fromSTEB(9.0,30.0,10.0,0.0),
          backgroundColor: Colors.green,
          // leading: Text("leading"),
          middle: Text(_title),
          trailing: Text("trailing2")),
      backgroundColor: Colors.white,
      child: Container(
        margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
        padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        height: 1000.0,
        width: 1000.0,
        child: Column(
          children: <Widget>[
            CupertinoButton(
              padding: EdgeInsets.all(10.0),
              color: Colors.blue,
              child: Text(
                "ios风格按钮2",
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
