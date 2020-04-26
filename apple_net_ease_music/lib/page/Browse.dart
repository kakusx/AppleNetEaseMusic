import 'package:appleneteasemusic/classes/ScrollEvent.dart';
import 'package:appleneteasemusic/util/EventBusUtil.dart';
import 'package:appleneteasemusic/constant/Constant.dart';
import 'package:appleneteasemusic/widget/LineTextItem.dart';
import 'package:appleneteasemusic/widget/SongListPage.dart';
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
                        height: 200,
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: hotList,
                        ),
                      ),
                      Divider(),
                      SubTitleItem(titleText: '音乐心情',),
                      Container(
                        height: 90,
                        padding: EdgeInsets.fromLTRB(10, 5, 0, 10),
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: musicStyles,
                        ),
                      ),
                      Divider(),

                      SubTitleItem(titleText: '新歌速递', buttonText: '查看全部'),
                      Container(
                        height: 260,
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemExtent: 310.0,
                          itemBuilder: (BuildContext context, int index){
                            return SongListPage(startIndex: index, songList: newSongs, pageSize: 4,);
                          },
                        ),
                      ),
                      Divider(),
                      SubTitleItem(titleText: '本周新碟', buttonText: '查看全部'),
                      Container(
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                        height: 200,
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: weekNewAlbums,
                        ),
                      ),

                      Divider(),
                      SubTitleItem(titleText: '探索更多'),
                      LineTextItem(
                        text: '排行榜',
                      ),
                      Divider(),
                      LineTextItem(
                        text: '音乐风格',
                      ),
                      Divider(),
                      LineTextItem(
                        text: '语种',
                      ),
                      Divider(),
                      LineTextItem(
                        text: '场景',
                      ),
                      Divider(),
                      LineTextItem(
                        text: '主题',
                      ),

                      Divider(),
                      SubTitleItem(titleText: '音乐MV'),
                      Container(
                        height: 210,
                        padding: EdgeInsets.fromLTRB(10, 5, 0, 10),
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: mvList,
                        ),
                      ),

                      Divider(),
                      SubTitleItem(titleText: '独家放送'),
                      Container(
                        height: 210,
                        padding: EdgeInsets.fromLTRB(10, 5, 0, 10),
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: excludedContents,
                        ),
                      ),

                    ])))));
  }
}
