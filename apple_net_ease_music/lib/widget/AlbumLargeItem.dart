import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AlbumLargeItem extends StatefulWidget {
  final String title;
  final String subTitle;
  final String imgSrc;
  final String albumType;
  final Key key;

  AlbumLargeItem({this.title, this.subTitle, this.imgSrc, this.albumType, this.key});

  @override
  _AlbumLargeItemState createState() =>
      _AlbumLargeItemState(title: this.title, subTitle: this.subTitle, imgSrc: this.imgSrc, albumType: this.albumType, key: this.key);
}

class _AlbumLargeItemState extends State<AlbumLargeItem> {
  final String title;
  final String subTitle;
  final String imgSrc;
  final String albumType;
  final Key key;

  _AlbumLargeItemState({this.title, this.subTitle, this.imgSrc, this.albumType, this.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            this.albumType,
            textAlign: TextAlign.left,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          Text(
            this.title,
            textAlign: TextAlign.left,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          Text(
            this.subTitle,
            textAlign: TextAlign.left,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black54),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl: this.imgSrc,
                width: 300,
                height: 200,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
