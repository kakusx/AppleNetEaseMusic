import 'package:flutter/material.dart';

class SubTitleItem extends StatelessWidget {
  final String titleText;
  final String buttonText;
  final IconData icon;

  SubTitleItem({this.titleText, this.buttonText, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 3, 10, 8),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              titleText,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          this.icon!=null ? Icon(this.icon, color:Theme.of(context).accentColor, size: 18 ,):Text(''),
          Text(
            this.buttonText ?? '',
            style: TextStyle(color: Theme.of(context).accentColor, fontSize: 14),
          )
        ],
      ),
    );
  }
}
