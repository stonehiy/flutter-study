import 'package:flutter/widgets.dart';
import 'package:flutter_app/page/ios/home.dart';
import 'package:flutter_app/page/material/list.dart';

class MaterialRoute {
  static Map<String, WidgetBuilder> route = <String, WidgetBuilder>{
    ROUTE_PAGE_List: (BuildContext context) => ListPage(),
    ROUTE_PAGE_IOS: (BuildContext context) => IOSApp(),
  };

  static const String ROUTE_PAGE_List = "page/list";
  static const String ROUTE_PAGE_IOS = "page/ios";
}
