import 'package:appleneteasemusic/classes/ScrollEvent.dart';
import 'package:appleneteasemusic/util/EventBusUtil.dart';
import 'package:appleneteasemusic/constant/Constant.dart';
import 'package:appleneteasemusic/widget/SubTitleItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BrowsePage extends StatefulWidget {
  @override
  _BrowsePageState createState() => _BrowsePageState();
}

class _BrowsePageState extends State<BrowsePage> {
  @override
  Widget build(BuildContext context) {
    double scrollHeight = 0;

    var _listScrollCtl = ScrollController(initialScrollOffset: 0);
    _listScrollCtl.addListener(() {
      scrollHeight = _listScrollCtl.position.pixels;
      EventBusUtil.getInstance().fire(ScrollEvent(scrollHeight));
    });

    return RefreshIndicator(
        backgroundColor: Colors.white,
        onRefresh: () {
          return null;
        },
        child: Container(
            color: Colors.white,
            child: CupertinoScrollbar(
                child: Container(
                    padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: ListView(controller: _listScrollCtl, shrinkWrap: true, children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(5, 0, 15, 0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                '浏览',
                                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(),
                      Container(
                        height: 270,
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: largeAlbums,
                        ),
                      ),
                      SubTitleItem(titleText: '热门歌手', buttonText: '查看全部',),
                      Container(
                        height: 130,
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: artistList,
                        ),
                      ),
                      Divider(),
                      SubTitleItem(titleText: '热门歌单', buttonText: '查看全部',),
                      Container(
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                        height: 210,
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: hotList,
                        ),
                      ),
                      Divider(),
                      SubTitleItem(titleText: '音乐分类', buttonText: '查看全部',),
                      Container(
                        height: 70,
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: musicStyles,
                        ),
                      ),
                      Divider(),

                    ])))));
  }
}
