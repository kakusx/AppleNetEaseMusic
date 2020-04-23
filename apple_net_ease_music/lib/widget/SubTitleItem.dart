import 'package:flutter/material.dart';

class SubTitleItem extends StatefulWidget {
  final String titleText;
  final String buttonText;

  SubTitleItem({this.titleText, this.buttonText});

  @override
  _SubTitleItemState createState() => _SubTitleItemState(text: this.titleText, buttonText: this.buttonText);
}

class _SubTitleItemState extends State<SubTitleItem> {
  final String text;
  final String buttonText;

  _SubTitleItemState({this.text, this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 3, 10, 8),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          Text(this.buttonText??'', style: TextStyle(color: Theme.of(context).accentColor, fontSize: 14),)
        ],
      ),
    );
  }
}
