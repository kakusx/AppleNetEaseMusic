import 'package:appleneteasemusic/classes/ScrollEvent.dart';
import 'package:appleneteasemusic/constant/Constant.dart';
import 'package:appleneteasemusic/util/EventBusUtil.dart';
import 'package:appleneteasemusic/widget/LineTextItem.dart';
import 'package:appleneteasemusic/widget/SubTitleItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LibraryPage extends StatefulWidget {
  @override
  _LibraryPageState createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {

  @override
  Widget build(BuildContext context) {

    double scrollHeight = 0;

    var _listScrollCtl = ScrollController(initialScrollOffset: 0);
    _listScrollCtl.addListener((){
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
              child: ListView(
                controller: _listScrollCtl,
                shrinkWrap: true,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(5, 0, 15, 0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            '资料库',
                            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          '编辑',
                          style: TextStyle(color: Theme.of(context).accentColor, fontSize: 17),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  LineTextItem(
                    text: '播放列表',
                  ),
                  Divider(),
                  LineTextItem(
                    text: '艺人',
                  ),
                  Divider(),
                  LineTextItem(
                    text: '专辑',
                  ),
                  Divider(),
                  LineTextItem(
                    text: '歌曲',
                  ),
                  Divider(),
                  LineTextItem(
                    text: '已下载的音乐',
                  ),
                  Divider(),
                  SubTitleItem(titleText: '最近添加'),
                  GridView.count(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 0,
                    padding: EdgeInsets.all(3),
                    crossAxisCount: 2,
                    childAspectRatio: 0.78,
                    children: albumList,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                  )
                ],
              ),
            ))));
  }
}
