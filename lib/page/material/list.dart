import 'dart:async';
import 'dart:math';
import 'dart:ui';

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
          margin: EdgeInsets.all(0.0),
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
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 100,
          color: Colors.red,
          child: Image.network(
            data.url,
            width: window.physicalSize.width,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: window.physicalSize.width,
          height: 30,
          color: Colors.blue,
          child: Text(data.content),
        ),
        Container(
          alignment: Alignment.center,
          width: window.physicalSize.width,
          height: 2,
          color: Colors.white,
        ),
      ],
    );
  }

  void _timerStart() {
    List<String> _listImage = [
      "http://pic1.win4000.com/wallpaper/2020-09-11/5f5b439f4219d.jpg",
      "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1600340965420&di=bb7a4fe6449a72fb68417ce792571e81&imgtype=0&src=http%3A%2F%2F01.minipic.eastday.com%2F20170414%2F20170414173232_4a717c3f9a94e5376cedc0b40b6e660b_6.jpeg",
      "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1600340965420&di=70b8cd0df2fc9c7bfb7458bcd3217d1f&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fpic%2Ff%2F33%2F648011013.jpg",
      "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1600340965420&di=dd13b420de5b446da2dd3266fedffe0b&imgtype=0&src=http%3A%2F%2F00.minipic.eastday.com%2F20170511%2F20170511132314_6cab43df10415723a8f3bdd9dc5364ed_8.jpeg",
      "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1600340965419&di=be0e14d8f964e40921f60af12c19b7de&imgtype=0&src=http%3A%2F%2F01.minipic.eastday.com%2F20170113%2F20170113174441_4a700387e67e0119e06a111ee2292bf7_10.jpeg",
    ];
    int _count = 0;
    const timeout = const Duration(seconds: 1);
    _timer = Timer.periodic(timeout, (timer) {
      //1s 回调一次
      _count++;
      var date = DateTime.now().toString();
      print('afterTimer=' + date);
      print('_count = $_count');
      //timer.cancel(); // 取消定时器
      var random = Random();
      int i = random.nextInt(_listImage.length);
      print('i = $i');
      setState(() {
        var data = ListData(url: _listImage[i], content: "content = $date");
        this._listData.add(data);
      });
    });
  }

  void _timerCancel() {
    _timer?.cancel();
  }
}
