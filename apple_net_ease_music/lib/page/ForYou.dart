import 'package:appleneteasemusic/classes/ScrollEvent.dart';
import 'package:appleneteasemusic/constant/Constant.dart';
import 'package:appleneteasemusic/util/EventBusUtil.dart';
import 'package:appleneteasemusic/widget/RcmdGrid.dart';
import 'package:appleneteasemusic/widget/SongListPage.dart';
import 'package:appleneteasemusic/widget/SubTitleItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForYouPage extends StatefulWidget {
  @override
  _ForYouPageState createState() => _ForYouPageState();
}

class _ForYouPageState extends State<ForYouPage> {
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

                      //region 标题
                      Container(
                        padding: EdgeInsets.fromLTRB(5, 0, 15, 0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                '为你推荐',
                                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(),
                      //endregion

                      //region 每日推荐
                      RcmdGrid(forYouSongs),
                      Divider(),
                      //endregion

                      //region 为你精挑细选
                      SubTitleItem(titleText: '为你精挑细选', buttonText: '换一换', icon: Icons.loop,),
                      Container(
                        height: 130,
                        padding: EdgeInsets.only(left: 0),
                        child: Flex(
                          direction: Axis.horizontal,
                          children: forYouAlbums.sublist(0, 3),
                        ),
                      ),
                      Divider(),
                      //endregion

                      //region 歌曲列表1
                      SubTitleItem(titleText: '一秒沦陷 华语精选', buttonText: '播放全部', icon: Icons.play_arrow,),
                      Container(
                        height: 260,
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemExtent: 310.0,
                          itemBuilder: (BuildContext context, int index) {
                            return SongListPage(
                              startIndex: index,
                              songList: newSongs,
                              pageSize: 4,
                            );
                          },
                        ),
                      ),
                      Divider(),
                      //endregion

                      //region 歌单列表1
                      SubTitleItem(titleText: '宅家听歌的不二之选', buttonText: '查看更多',),
                      Container(
                        height: 140,
                        padding: EdgeInsets.only(left: 0),
                        child: Flex(
                          direction: Axis.horizontal,
                          children: forYouAlbums.sublist(3, 6),
                        ),
                      ),
                      Divider(),
                      //endregion

                      //region 歌曲列表1
                      SubTitleItem(titleText: '心晴出口🌞️', buttonText: '播放全部', icon: Icons.play_arrow,),
                      Container(
                        height: 260,
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemExtent: 310.0,
                          itemBuilder: (BuildContext context, int index) {
                            return SongListPage(
                              startIndex: index,
                              songList: newSongs,
                              pageSize: 4,
                            );
                          },
                        ),
                      ),
                      Divider(),
                      //endregion

                      //region 电台列表 1
                      SubTitleItem(titleText: '你喜欢的声音 这里都有', buttonText: '播放全部', icon: Icons.play_arrow),
                      Container(
                        height: 140,
                        padding: EdgeInsets.only(left: 0),
                        child: Flex(
                          direction: Axis.horizontal,
                          children: forYouAlbums.sublist(6, 9),
                        ),
                      ),
                      Divider(),
                      //endregion

                      //region 电台列表2
                      SubTitleItem(
                        titleText: '暖声电台 疗音治愈',
                        buttonText: '查看全部',
                      ),
                      Container(
                        height: 275,
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 1,
                          itemExtent: 350.0,
                          itemBuilder: (BuildContext context, int index) {
                            return SongListPage(
                              startIndex: index,
                              songList: radioList["2"],
                              pageSize: 4,
                            );
                          },
                        ),
                      ),
                      //endregion



                    ])))));
  }
}
