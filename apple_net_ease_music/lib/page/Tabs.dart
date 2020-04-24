import 'package:appleneteasemusic/classes/ScrollEvent.dart';
import 'package:appleneteasemusic/util/EventBusUtil.dart';
import 'package:event_bus/event_bus.dart';
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

  List _pageNames = ['资料库', '为你推荐', '浏览', '电台',];
  List _pageList = [LibraryPage(), ForYouPage(), BrowsePage(), RadioPage()];

  double _scrollHeight = 70;
  double _opacity = 0;

  EventBus eventBus = new EventBus();

  @override
  void initState() {
    super.initState();
    EventBusUtil.getInstance().on<ScrollEvent>().listen((ScrollEvent data) => onListenEvent(data));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: AppBar(
            title: Opacity(
              opacity: _opacity,
              child: Container(
                padding: EdgeInsets.fromLTRB(0, _scrollHeight, 0, 0),
                child: Text(_pageNames[this._currentIndex]),
              ),
            ),
            elevation: 0,
            brightness: Brightness.dark,
            actions: <Widget>[
              new IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Theme.of(context).accentColor,
                  ),
                  onPressed: () {}),
              new IconButton(icon: Icon(Icons.more_vert, color: Theme.of(context).accentColor), onPressed: () {}),
            ]),
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
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.library_music), title: Text('资料库')),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), title: Text('为你推荐')),
            BottomNavigationBarItem(icon: Icon(Icons.queue_music), title: Text('浏览')),
            BottomNavigationBarItem(icon: Icon(Icons.radio), title: Text('电台')),
          ]),
    );
  }

  onListenEvent(ScrollEvent data) {
    setState(() {
      if(data.scrollHeight <= 0){
        _scrollHeight = 70;
        _opacity = 0;
      }else if(data.scrollHeight > 0 && data.scrollHeight <= 70){
        _scrollHeight = 70 - data.scrollHeight;
        _opacity = (data.scrollHeight + 1) / 71.0;
      }else{
        _scrollHeight = 0;
        _opacity = 1;
      }
    });
  }
}
