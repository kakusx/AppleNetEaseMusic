import 'package:flutter/material.dart';

class LineTextItem extends StatefulWidget {
  final String text;

  LineTextItem({this.text});

  @override
  _LineTextItemState createState() => _LineTextItemState(text: this.text);
}

class _LineTextItemState extends State<LineTextItem> {
  final String text;

  _LineTextItemState({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 3, 15, 3),
      child: Text(
        text,
        style: TextStyle(fontSize: 20, color: Theme.of(context).accentColor),
      ),
    );
  }
}
