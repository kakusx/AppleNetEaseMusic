import 'package:flutter/material.dart';

class SongListPage extends StatelessWidget {
  final int startIndex;
  final List<Widget> songList;
  final int pageSize;

  SongListPage({this.startIndex, this.songList, this.pageSize});

  @override
  Widget build(BuildContext context) {
    var subList = songList.getRange(pageSize* startIndex, pageSize * (startIndex + 1));
    List<Widget> current = [];
    for (var o in subList) {
      current.add(o);
      current.add(Divider());
    }
    current.removeLast();
    return Container(
      margin: EdgeInsets.only(right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: current,
      ),
    );
  }
}
