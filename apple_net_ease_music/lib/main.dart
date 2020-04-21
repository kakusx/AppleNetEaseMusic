import 'package:appleneteasemusic/route/Routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: onGenerateRoute,
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(primaryColor: Colors.white, backgroundColor: Colors.white, accentColor: Color.fromRGBO(255, 39, 76, 1), dividerColor: Colors.black26),
    );
  }
}
