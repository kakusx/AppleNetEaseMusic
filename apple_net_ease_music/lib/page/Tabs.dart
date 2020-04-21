import 'package:flutter/material.dart';

import 'Browse.dart';
import 'ForYou.dart';
import 'Library.dart';
import 'Radio.dart';

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;

  List _pageList = [LibraryPage(), ForYouPage(), BrowsePage(), RadioPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(child: AppBar(
          titleSpacing: 0,
          elevation: 0,
          brightness: Brightness.dark,
          actions: <Widget>[
            new IconButton(icon: Icon(Icons.search, color: Theme.of(context).accentColor,), onPressed: () {}),
            new IconButton(icon: Icon(Icons.more_vert, color: Theme.of(context).accentColor), onPressed: () {}),
          ]
      ),
        preferredSize: Size.fromHeight(50),
      ),
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: this._currentIndex,
          onTap: (int index) {
            setState(() {
              this._currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Theme.of(context).accentColor,
          selectedLabelStyle: TextStyle(color: Theme.of(context).accentColor),
          unselectedItemColor: Colors.black54,
          unselectedLabelStyle: TextStyle(color: Colors.black54),
          selectedFontSize: 12,
          unselectedFontSize: 12,
          showSelectedLabels:true,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.library_music), title: Text('资料库')),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), title: Text('为你推荐')),
            BottomNavigationBarItem(icon: Icon(Icons.queue_music), title: Text('浏览')),
            BottomNavigationBarItem(icon: Icon(Icons.radio), title: Text('广播')),
          ]),
    );
  }
}
