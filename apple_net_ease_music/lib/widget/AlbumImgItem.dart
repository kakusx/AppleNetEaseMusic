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
      padding: EdgeInsets.fromLTRB(15, 3, 15, 3),
      child: Column(
        children: <Widget>[
          CachedNetworkImage(
            imageUrl: this.imgSrc,
            width: 50,
            height: 50,
          ),
          Text(
            this.title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            this.subTitle,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54),
          )
        ],
      ),
    );
  }
}
