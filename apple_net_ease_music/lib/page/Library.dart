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
      imgSrc: 'https://p3.music.126.net/sY3TVSvagXidLzCOy9WVwg==/109951164881032001.jpg?param=177y177',
    ),
    AlbumImgItem(
      key: Key('2'),
      title: '100 Ways',
      subTitle: '王嘉尔',
      imgSrc: 'http://p2.music.126.net/bZxfyuY58soD71VGxv6BDQ==/109951164814715844.jpg?param=177y177',
    ),
    AlbumImgItem(
      key: Key('3'),
      title: '从M到W的高速公路从M到W的高速公路',
      subTitle: 'Lil Ghost小鬼',
      imgSrc: 'http://p2.music.126.net/oxBIGY-ZOZUoaZkR8m6mJQ==/109951164542290755.jpg?param=177y177',
    ),
    AlbumImgItem(
      key: Key('4'),
      title: '아무도 모른다 OST',
      subTitle: 'V.A.',
      imgSrc: 'http://p1.music.126.net/r46Yx_4pVF1XgoQNS4_fIg==/109951164922833531.jpg?param=177y177',
    ),
    AlbumImgItem(
      key: Key('5'),
      title: 'IVORY',
      subTitle: '沈圭善',
      imgSrc: 'http://p1.music.126.net/KsO32EFqwyptOMqA1hYGFQ==/109951164922653118.jpg?param=177y177',
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
            child: CupertinoScrollbar(
                child: Container(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
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
                  GridView.count(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    padding: EdgeInsets.all(3),
                    crossAxisCount: 2,
                    childAspectRatio: 0.8,
                    children: _data,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                  )
                ],
              ),
            ))));
  }
}
