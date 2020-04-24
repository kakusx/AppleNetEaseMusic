import 'package:appleneteasemusic/classes/ScrollEvent.dart';
import 'package:appleneteasemusic/constant/Constant.dart';
import 'package:appleneteasemusic/util/EventBusUtil.dart';
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
                      Container(
                        height: 125,
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: radioBannerList,
                        ),
                      ),
                      Container(height: 15,),

                      SubTitleItem(titleText: '电台推荐', buttonText: '换一换', icon: Icons.swap_horiz),
                      Container(
                        height: 150,
                        padding: EdgeInsets.only(left: 0),
                        child: Flex(
                          direction: Axis.horizontal,
                          children: radioRcmdList,
                        ),
                      ),

                      SubTitleItem(titleText: '精品电台', buttonText: '查看全部',),
                      Container(
                        height: 150,
                        padding: EdgeInsets.only(left: 0),
                        child: Flex(
                          direction: Axis.horizontal,
                          children: radioFeaturedList,
                        ),
                      ),



                    ])))));
  }
}
