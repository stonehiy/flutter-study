import 'package:flutter/cupertino.dart';
import 'package:flutter_app/page/material/route.dart';

class MyCupertinoDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text("标题"),
      content: Text("这是内容描述"),
      actions: <Widget>[
        CupertinoDialogAction(
          child: Text('取消'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        CupertinoDialogAction(
          child: Text('确认'),
          onPressed: () {
            Navigator.of(context).pop();

          },
        ),
      ],
    );
  }
}
