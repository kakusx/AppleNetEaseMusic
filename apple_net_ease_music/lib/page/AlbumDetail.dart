import 'package:appleneteasemusic/classes/Music.dart';
import 'package:appleneteasemusic/constant/Constant.dart';
import 'package:appleneteasemusic/widget/SubTitleItem.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

class AlbumDetail extends StatefulWidget {
  final Map arguments;

  AlbumDetail({this.arguments});

  @override
  _AlbumDetailState createState() => _AlbumDetailState(arguments: this.arguments);
}

class _AlbumDetailState extends State<AlbumDetail> {
  final Map arguments;
  double _opacity = 0;
  double _scrollHeight = 70;
  Music _music = Music();
  List<String> _musicList = [];
  bool _showFullDesc = false;

  var _listScrollCtl = ScrollController(initialScrollOffset: 0);

  @override
  void initState() {
    super.initState();
    setState(() {
      _music.artist = '张悬';
      _music.title = '神的游戏';
      _music.imgSrc = 'http://p2.music.126.net/klOSGBRQhevtM6c9RXrM1A==/18808245906527670.jpg';
      _music.year = 2012;
      _music.musicType = '国语流行';
      _music.desc =
      '2012年盛夏，最令人期待的专辑之一。张悬最新作品『神的游戏』，词、曲、编曲、制作全由张悬倾注心血完成。风格独到的音乐与观点细腻的文字，第一次聆听就被深深吸引，这张专辑却同样直指人生各种境地，在时光与反复中将依旧无限耐人寻味。一如张悬历来作品的展现，此刻交出的这张作品，总括张悬三年以来个人生活的累积心得，既安稳的平心静气娓娓道来，又蓄势着蕴涵为未来将要展开的行动预备新能量。';
      _musicList.addAll(['疯狂的阳光', '蓝天白云', '两者', '如何', '危险的, 是', 'Triste', '我想你要走了', '艳火', '日子']);

      _listScrollCtl.addListener(() {
        _scrollHeight = _listScrollCtl.position.pixels;
        if (_scrollHeight <= 0) {
          _scrollHeight = 70;
          _opacity = 0;
        } else if (_scrollHeight > 0 && _scrollHeight <= 70) {
          _scrollHeight = 70 - _scrollHeight;
          _opacity = (_scrollHeight + 1) / 71.0;
        } else {
          _scrollHeight = 0;
          _opacity = 1;
        }
        print(_scrollHeight);
        print(_opacity);
      });
    });
  }

  _AlbumDetailState({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          child: AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                color: Theme.of(context).accentColor,
              ),
              title: Opacity(
                opacity: _opacity,
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, _scrollHeight, 0, 0),
                  child: Text("神的游戏"),
                ),
              ),
              elevation: 0,
              brightness: Brightness.dark,
              actions: <Widget>[
                new IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Theme
                          .of(context)
                          .accentColor,
                    ),
                    onPressed: () {}),
                new IconButton(icon: Icon(Icons.more_vert, color: Theme
                    .of(context)
                    .accentColor), onPressed: () {}),
              ]),
          preferredSize: Size.fromHeight(50),
        ),
        body: RefreshIndicator(
          backgroundColor: Colors.white,
          onRefresh: () {
            return null;
          },
          child: Container(
              color: Colors.white,
              child: CupertinoScrollbar(
                  child: Container(
                      padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                      child: ListView(controller: _listScrollCtl, shrinkWrap: true, children: <Widget>[
                        //region 专辑信息
                        Container(
                          height: 125,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              // todo 标题图点击放大
                              ClipRRect(
                                borderRadius: BorderRadius.circular(6),
                                child: CachedNetworkImage(
                                  fit: BoxFit.cover,
                                  imageUrl: _music.imgSrc ?? "",
                                  width: 120,
                                  height: 120,
                                ),
                              ),
                              Container(
                                height: 120,
                                margin: EdgeInsets.only(left: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            _music.title,
                                            style: TextStyle(
                                              fontSize: 16,
                                            ),
                                          ),
                                          Text(
                                            _music.artist,
                                            style: TextStyle(color: Theme
                                                .of(context)
                                                .accentColor, fontSize: 16),
                                          ),
                                          Text(_music.musicType + ' ' + _music.year.toString(), style: TextStyle(color: Colors.black54)),
                                        ],
                                      ),
                                    ),
                                    Container(
                                        width: 195,
                                        height: 24,
                                        child: Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Align(
                                                alignment: Alignment.centerLeft,
                                                child: Icon(OMIcons.cloudDownload, color: Theme
                                                    .of(context)
                                                    .accentColor, size: 24),
                                              ),
                                            ),
                                            Container(
                                              width: 22,
                                              height: 22,
                                              decoration: BoxDecoration(
                                                color: Theme
                                                    .of(context)
                                                    .accentColor,
                                                borderRadius: BorderRadius.circular(20),
                                              ),
                                              child: Icon(Icons.more_vert, color: Colors.white, size: 22),
                                            )
                                          ],
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Divider(),
                        //endregion

                        //region 专辑简介
                        new GestureDetector(
                            onTap: () {
                              setState(() {
                                _showFullDesc = !_showFullDesc;
                              });
                            },
                            child: Text(
                              _music.desc,
                              maxLines: _showFullDesc ? 20 : 4,
                              overflow: TextOverflow.ellipsis,
                            )),
                        Divider(),
                        //endregion

                        //region 播放按钮
                        Row(
                            children: <Widget>[
                              Expanded(
                                child: MaterialButton(
                                  color: Color.fromRGBO(255, 255, 255, 0.9),
                                  textColor: Theme.of(context).accentColor,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(Icons.play_arrow, size: 16,),
                                      Container(width: 3,),
                                      new Text('播放全部')
                                    ],
                                  ),
                                  onPressed: () {
                                  },
                                ),
                              ),
                              Container(width: 10,),
                              Expanded(
                                child: MaterialButton(
                                  color: Color.fromRGBO(255, 255, 255, 0.9),
                                  textColor: Theme.of(context).accentColor,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(Icons.shuffle, size: 16,),
                                      Container(width: 3,),
                                      new Text('随机播放')
                                    ],
                                  ),
                                  onPressed: () {
                                  },
                                )
                              )
                            ],
                        ),
                        Divider(),
                        //endregion

                        //region 歌曲列表
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: getSongList(),
                        ),
                        //endregion

                        //region 更多作品
                        SubTitleItem(titleText: '更多${_music.artist}的作品', buttonText: '查看全部'),
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
                        //endregion

                        //region 合作者
                        SubTitleItem(titleText: '合作者：${_music.artist}', buttonText: '查看全部'),
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
                        //endregion

                      ])))),
        ));
  }

  List<Widget> getSongList() {
    List<Widget> result = [];
    for (var music in _musicList) {
      result.add(Row(
        children: <Widget>[
          Text((_musicList.indexOf(music) + 1).toString(), style: TextStyle(color: Colors.black38, height: 1.5),),
          Container(width: 10,),
          Expanded(
            child: Text(music, style:TextStyle(height: 1.5, fontSize: 15)),
          )
        ],
      ));
      result.add(Divider());
    }
    return result;
  }
}
