import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AlbumImgItem extends StatefulWidget {
  final String title;
  final String subTitle;
  final String imgSrc;


  AlbumImgItem({this.title, this.subTitle, this.imgSrc});

  @override
  _AlbumImgItemState createState() => _AlbumImgItemState(title: this.title, subTitle: this.subTitle, imgSrc: this.imgSrc);
}

class _AlbumImgItemState extends State<AlbumImgItem> {
  final String title;
  final String subTitle;
  final String imgSrc;

  _AlbumImgItemState({this.title, this.subTitle, this.imgSrc});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CachedNetworkImage(
              fit: BoxFit.cover,
              imageUrl: this.imgSrc,
              width: 150,
              height: 150,
            ),
          ),
          ),
          Text(
            this.title,
            textAlign: TextAlign.left,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 12,height: 1.5, fontWeight: FontWeight.bold),
          ),
          Text(
            this.subTitle,
            textAlign: TextAlign.left,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 12,height: 1.5, fontWeight: FontWeight.bold, color: Colors.black54),
          )
        ],
      ),
    );
  }
}
