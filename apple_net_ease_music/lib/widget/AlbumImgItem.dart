import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AlbumImgItem extends StatefulWidget {
  final String title;
  final String subTitle;
  final String imgSrc;
  final Key key;


  AlbumImgItem({this.title, this.subTitle, this.imgSrc, this.key});

  @override
  _AlbumImgItemState createState() => _AlbumImgItemState(title: this.title, subTitle: this.subTitle, imgSrc: this.imgSrc, key: this.key);
}

class _AlbumImgItemState extends State<AlbumImgItem> {
  final String title;
  final String subTitle;
  final String imgSrc;
  final Key key;

  _AlbumImgItemState({this.title, this.subTitle, this.imgSrc, this.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CachedNetworkImage(
              fit: BoxFit.fill,
              imageUrl: this.imgSrc,
              width: 160,
              height: 160,
            ),
          ),
          ),
          Text(
            this.title,
            textAlign: TextAlign.left,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
          Text(
            this.subTitle,
            textAlign: TextAlign.left,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black54),
          )
        ],
      ),
    );
  }
}
