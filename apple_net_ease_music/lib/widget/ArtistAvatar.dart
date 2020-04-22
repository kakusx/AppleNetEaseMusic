import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

/// 歌手头像
class ArtistAvatar extends StatelessWidget {
  final String name;
  final String imgSrc;

  ArtistAvatar(this.name, this.imgSrc);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          ClipOval(
            child: CachedNetworkImage(
              fit: BoxFit.cover,
              imageUrl: this.imgSrc,
              width: 80,
              height: 80,
            ),
          ),
          Container(
            height: 5,
          ),
          Text(
            this.name,
            style: TextStyle(fontSize: 14),
          )
        ],
      ),
    );
  }
}
