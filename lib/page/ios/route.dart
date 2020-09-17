import 'package:flutter/widgets.dart';
import 'package:flutter_app/page/ios/home.dart';
import 'package:flutter_app/page/material/list.dart';

class IOSRoute {
  static const String ROUTE_PAGE_IOS2 = "page/ios2";

  static Map<String, WidgetBuilder> route = <String, WidgetBuilder>{
    ROUTE_PAGE_IOS2: (BuildContext context) => IOSHomePage2("IOS style2"),
  };
}
