import 'package:appleneteasemusic/classes/Music.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class RcmdGrid extends StatelessWidget {
  List<Music> gridMusics;

  RcmdGrid(this.gridMusics);

  BoxDecoration decoration = BoxDecoration(
      color: Colors.white, borderRadius: BorderRadius.circular(6), boxShadow: [BoxShadow(blurRadius: 5, color: Color.fromRGBO(190, 190, 190, 0.5))]);

  List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
    const StaggeredTile.count(2, 2),
    const StaggeredTile.count(1, 1),
    const StaggeredTile.count(2, 2),
    const StaggeredTile.count(1, 1),
    const StaggeredTile.count(1, 1),
    const StaggeredTile.count(1, 1),
    const StaggeredTile.count(1, 1),
    const StaggeredTile.count(1, 1),
    const StaggeredTile.count(1, 1),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 220,
        child: new StaggeredGridView.count(
          crossAxisCount: 5,
          staggeredTiles: _staggeredTiles,
          children: getGridTiles(context),
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          padding: const EdgeInsets.all(4.0),
        ));
  }

  // TODO 这里可以做成app store那种无限滚动的样式
  List<Widget> getGridTiles(context) {
    List<Widget> songs = gridMusics
        .sublist(0, 8)
        .map((music) => Container(
            decoration: decoration,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: CachedNetworkImage(fit: BoxFit.cover, imageUrl: music.imgSrc),
            )))
        .toList();
    songs.add(Container(
        decoration: decoration,
        child: Icon(
          Icons.play_circle_outline,
          size: 40,
          color: Theme.of(context).accentColor,
        )));
    return songs;
  }
}
