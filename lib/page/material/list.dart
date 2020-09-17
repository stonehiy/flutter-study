import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/entity/entity.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() {
    return _ListPageState();
  }
}

class _ListPageState extends State<ListPage> {
  List<ListData> _listData = List();
  Timer _timer;

  ///这是创建widget时候调用的，除构造方法外的第一个方法
  ///类似于iOS的viewDidLoad()
  ///在这个方法中通常会做一些初始化工作，比如channel的初始化，监听器的初始化等
  @override
  void initState() {
    print("------initState------");
    _timerStart();
    super.initState();
  }

  ///当以来的State对象改变时会调用
  @override
  void didChangeDependencies() {
    print('------didChangeDependencies-------');
    super.didChangeDependencies();
  }

  ///这是一个必须实现的方法，在这里实现你要成现的页面内容
  ///它会在 didChangeDependencies 方法之后立即调用；
  ///另外当调用 setState() 后也会再次调用该build方法；
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("list page"),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: _listView(),
        ),
      ),
    );
  }

  ///这是一个不常用到的生命周期方法，当父组件需要重新绘制时才会调用；
  @override
  void didUpdateWidget(ListPage oldWidget) {
    print('-------didUpdateWidget-----');
    super.didUpdateWidget(oldWidget);
  }

  ///很少使用，在组件被移除时候调用，在dispose之前调用
  @override
  void deactivate() {
    print('--------deactivate----------');
    super.deactivate();
  }

  ///常用，组件被销毁时候调用；
  ///通常在该方法中执行一些资源的释放工作，比如监听器的移除，channel的销毁等；
  @override
  void dispose() {
    print('--------dispose---------');
    _timerCancel();
    super.dispose();
  }

  Widget _listView() {
    return ListView.builder(
        itemCount: this._listData.length,
        itemBuilder: (BuildContext context, int index) {
          return _listTile(context, index);
        });
  }

  Widget _listTile(BuildContext context, int index) {
    var data = this._listData.elementAt(index);
    return ListTile(
      // leading: Text(data.title),
      title: Text(data.title),
      subtitle: Text(data.content),
    );
  }

  void _timerStart() {
    int _count = 0;
    const timeout = const Duration(seconds: 1);
    _timer = Timer.periodic(timeout, (timer) {
      //1s 回调一次
      _count++;
      var date = DateTime.now().toString();
      print('afterTimer=' + date);
      print('_count = $_count');
      //timer.cancel(); // 取消定时器
      setState(() {
        var data = ListData("titile$date");
        this._listData.add(data);
      });
    });
  }

  void _timerCancel() {
    _timer?.cancel();
  }
}
