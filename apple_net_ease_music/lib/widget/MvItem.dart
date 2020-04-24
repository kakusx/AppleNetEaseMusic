import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MvItem extends StatelessWidget {

  final String title;
  final String artist;
  final String imgSrc;

  MvItem({this.title, this.artist, this.imgSrc});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl: this.imgSrc,
                width: 240,
                height: 140,
              ),
            ),
          ),
          Text(
            this.title,
            textAlign: TextAlign.left,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 14, height: 1.5, fontWeight: FontWeight.bold),
          ),
          Text(
            this.artist,
            textAlign: TextAlign.left,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 14, height: 1.5, fontWeight: FontWeight.bold, color: Colors.black54),
          ),
        ],
      ),
    );
  }
}
