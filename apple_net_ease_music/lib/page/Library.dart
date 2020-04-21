import 'package:appleneteasemusic/widget/AlbumImgItem.dart';
import 'package:appleneteasemusic/widget/LineTextItem.dart';
import 'package:appleneteasemusic/widget/SubTitleItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LibraryPage extends StatefulWidget {
  @override
  _LibraryPageState createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  List<AlbumImgItem> _data = [
    AlbumImgItem(
      key: Key('1'),
      title: '新世界NEW WORLD',
      subTitle: '华晨宇',
      imgSrc: 'https://p3.music.126.net/sY3TVSvagXidLzCOy9WVwg==/109951164881032001.jpg?param=130y130',
    ),
    AlbumImgItem(
      key: Key('2'),
      title: '新世界NEW WORLD',
      subTitle: '华晨宇',
      imgSrc: 'https://p3.music.126.net/sY3TVSvagXidLzCOy9WVwg==/109951164881032001.jpg?param=130y130',
    ),
    AlbumImgItem(
      key: Key('3'),
      title: '新世界NEW WORLD',
      subTitle: '华晨宇',
      imgSrc: 'https://p3.music.126.net/sY3TVSvagXidLzCOy9WVwg==/109951164881032001.jpg?param=130y130',
    ),
    AlbumImgItem(
      key: Key('4'),
      title: '新世界NEW WORLD',
      subTitle: '华晨宇',
      imgSrc: 'https://p3.music.126.net/sY3TVSvagXidLzCOy9WVwg==/109951164881032001.jpg?param=130y130',
    ),
    AlbumImgItem(
      key: Key('5'),
      title: '新世界NEW WORLD',
      subTitle: '华晨宇',
      imgSrc: 'https://p3.music.126.net/sY3TVSvagXidLzCOy9WVwg==/109951164881032001.jpg?param=130y130',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        backgroundColor: Colors.white,
        onRefresh: () {
          return null;
        },
        child: Container(
            color: Colors.white,
            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
            child: CupertinoScrollbar(
                child: ListView(
              shrinkWrap: true,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
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
                SubTitleItem(text: '最近添加'),
                Container(
                  child: GridView.count(
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 30.0,
                    padding: EdgeInsets.all(10.0),
                    crossAxisCount: 2,
                    childAspectRatio: 2.0,
                    children: _data,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                  ),
                )
              ],
            ))));
  }
}
