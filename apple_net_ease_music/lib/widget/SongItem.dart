import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SongItem extends StatelessWidget {
  final String title;
  final String artist;
  final String imgSrc;

  SongItem({this.title, this.artist, this.imgSrc});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: CachedNetworkImage(
              fit: BoxFit.cover,
              imageUrl: this.imgSrc,
              width: 45,
              height: 45,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 5, 5, 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    this.title,
                    style: TextStyle(fontSize: 14, height: 1.5),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    this.title,
                    style: TextStyle(fontSize: 11, height: 1.5, color: Colors.black38),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
          Icon(Icons.add, color: Theme.of(context).accentColor,)
        ],
      ),
    );
  }
}
