import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BannerItem extends StatelessWidget {
  final String type;
  final String imgSrc;

  BannerItem({this.type, this.imgSrc});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CachedNetworkImage(
              fit: BoxFit.cover,
              imageUrl: this.imgSrc,
              width: 300,
              height: 115,
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(5,3,5,3),
            decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
              ),
            ),
            child: Text(this.type, style: TextStyle(fontSize: 11, color: Colors.white, letterSpacing: 1),),
          )
        ],
      ),
    );
  }
}
