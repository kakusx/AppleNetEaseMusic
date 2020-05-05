import 'package:appleneteasemusic/page/AlbumDetail.dart';
import 'package:appleneteasemusic/page/Tabs.dart';
import 'package:flutter/material.dart';

final routes = {
  '/': (context) => Tabs(),
  '/album': (context, {arguments}) => AlbumDetail(arguments:arguments),
};

RouteFactory onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(builder: (context) => pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route = MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
  return MaterialPageRoute(builder: (context) => pageContentBuilder(context));
};
