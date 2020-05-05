import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class RadioItem extends StatelessWidget {
  final String type;
  final String title;
  final String dj;
  final String imgSrc;
  final int dispStyle;

  RadioItem({this.type, this.title, this.dj, this.imgSrc, this.dispStyle});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Container(
          width: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                child: Stack(
                  alignment: this.dispStyle == 1 ? Alignment.topLeft : Alignment.bottomLeft,
                  children: <Widget>[
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          border: Border.all(color: Colors.black12),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(6),
                          child: CachedNetworkImage(
                            fit: BoxFit.cover,
                            imageUrl: this.imgSrc,
                            width: 100,
                            height: 100,
                          ),
                        )),
                    getCorner(context),
                    getNameLine(context),
                  ],
                ),
              ),
              Container(
                width: 100,
                child: Text(this.title,
                    style: TextStyle(
                      fontSize: 11,
                    )),
              )
            ],
          ),
        ));
  }

  getCorner(context) {
    return this.dispStyle == 1
        ? Container(
            padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
            decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(6),
                bottomRight: Radius.circular(4.0),
              ),
            ),
            child: Text(
              this.type,
              style: TextStyle(fontSize: 8, color: Colors.white, letterSpacing: 1),
            ),
          )
        : Container();
  }

  getNameLine(context) {
    return this.dispStyle == 2
        ? Container(
            width: 100,
            height: 50,
            padding: EdgeInsets.fromLTRB(5, 32, 2, 2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(6),
                bottomRight: Radius.circular(6),
              ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, Colors.black26],
                tileMode: TileMode.repeated,
              ),
            ),
            child: Text(
              this.dj,
              maxLines: 1,
              style: TextStyle(fontSize: 9, color: Colors.white),
            ),
          )
        : Container();
  }
}
