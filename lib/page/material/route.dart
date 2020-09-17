import 'package:flutter/widgets.dart';
import 'package:flutter_app/page/ios/home.dart';
import 'package:flutter_app/page/material/grid.dart';
import 'package:flutter_app/page/material/list.dart';

class MaterialRoute {
  static Map<String, WidgetBuilder> route = <String, WidgetBuilder>{
    ROUTE_PAGE_IOS: (BuildContext context) => IOSApp(),
    ROUTE_PAGE_List: (BuildContext context) => ListPage(),
    ROUTE_PAGE_GRID: (BuildContext context) => GridPage(),
  };
  static const String ROUTE_PAGE_IOS = "page/ios";
  static const String ROUTE_PAGE_List = "page/list";
  static const String ROUTE_PAGE_GRID = "page/grid";
}
