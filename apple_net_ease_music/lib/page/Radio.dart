import 'package:appleneteasemusic/classes/ScrollEvent.dart';
import 'package:appleneteasemusic/constant/Constant.dart';
import 'package:appleneteasemusic/util/EventBusUtil.dart';
import 'package:appleneteasemusic/widget/SongListPage.dart';
import 'package:appleneteasemusic/widget/SubTitleItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioPage extends StatefulWidget {
  @override
  _RadioPageState createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
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
                                '电台',
                                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(),
                      //endregion

                      //region banner
                      Container(
                        height: 125,
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: radioBannerList,
                        ),
                      ),
                      Container(
                        height: 20,
                      ),
                      //endregion

                      //region 快捷操作
                      Flex(direction: Axis.horizontal, children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.blur_on,
                                color: Theme.of(context).accentColor,
                                size: 40,
                              ),
                              Container(
                                height: 5,
                              ),
                              Text(
                                '电台分类',
                                style: TextStyle(color: Theme.of(context).accentColor, fontSize: 14),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.wifi_tethering, color: Theme.of(context).accentColor, size: 40,),
                              Container(
                                height: 5,
                              ),
                              Text(
                                '电台排行',
                                style: TextStyle(color: Theme.of(context).accentColor, fontSize: 14),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.star_border, color: Theme.of(context).accentColor, size: 40,),
                              Container(height: 5,),
                              Text(
                                '我的订阅',
                                style: TextStyle(color: Theme.of(context).accentColor, fontSize: 14),
                              )
                            ],
                          ),
                        ),
                      ]),
                      Container(
                        height: 20,
                      ),
                      //endregion

                      //region 电台推荐
                      SubTitleItem(titleText: '电台推荐', buttonText: '换一换', icon: Icons.loop),
                      Container(
                        height: 150,
                        padding: EdgeInsets.only(left: 0),
                        child: Flex(
                          direction: Axis.horizontal,
                          children: radioRcmdList,
                        ),
                      ),
                      SubTitleItem(
                        titleText: '精品电台',
                        buttonText: '查看全部',
                      ),
                      Container(
                        height: 160,
                        padding: EdgeInsets.only(left: 0),
                        child: Flex(
                          direction: Axis.horizontal,
                          children: radioFeaturedList,
                        ),
                      ),
                      //endregion

                      //region 音乐故事
                      SubTitleItem(titleText: '音乐故事', buttonText: '播放全部', icon: Icons.play_arrow),
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

                      //region 情感调频
                      SubTitleItem(
                        titleText: '情感调频',
                        buttonText: '查看全部',
                      ),
                      Container(
                        height: 160,
                        padding: EdgeInsets.only(left: 0),
                        child: Flex(
                          direction: Axis.horizontal,
                          children: radioList["3"],
                        ),
                      ),
                      //endregion

                      //region 有声书
                      SubTitleItem(titleText: '有声书', buttonText: '播放全部', icon: Icons.play_arrow),
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

                      //region 二次元
                      SubTitleItem(
                        titleText: '二次元',
                        buttonText: '查看全部',
                      ),
                      Container(
                        height: 160,
                        padding: EdgeInsets.only(left: 0),
                        child: Flex(
                          direction: Axis.horizontal,
                          children: radioList["3"],
                        ),
                      ),
                      //endregion

                      //region 商业财经
                      SubTitleItem(titleText: '商业财经', buttonText: '播放全部', icon: Icons.play_arrow),
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
