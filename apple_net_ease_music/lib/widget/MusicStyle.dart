import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MusicStyle extends StatelessWidget {
  final String name;
  final String imgSrc;

  MusicStyle({this.name, this.imgSrc});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CachedNetworkImage(
              fit: BoxFit.cover,
              imageUrl: this.imgSrc,
              width: 120,
              height: 70,
            ),
          ),
          Text(this.name, style: TextStyle(fontSize: 16, color: Colors.white, letterSpacing: 3, shadows: <Shadow>[
            Shadow(color: Colors.black87, offset: Offset(0, 0), blurRadius: 20)
          ],),)
        ],
      ),

    );
  }
}
