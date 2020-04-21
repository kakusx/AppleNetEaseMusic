import 'package:flutter/material.dart';

class SubTitleItem extends StatefulWidget {
  final String text;

  SubTitleItem({this.text});

  @override
  _SubTitleItemState createState() => _SubTitleItemState(text: this.text);
}

class _SubTitleItemState extends State<SubTitleItem> {
  final String text;

  _SubTitleItemState({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 3, 15, 3),
      child: Text(
        text,
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
    );
  }
}
