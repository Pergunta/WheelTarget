import 'package:flutter/material.dart';

const String _name = "Chris Paul";

class ChatMessage extends StatelessWidget {
  final String text;

// constructor to get text from textfield
  ChatMessage({this.text});

  @override
  Widget build(BuildContext context) {
    return new Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        child: new Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Container(
              margin: const EdgeInsets.only(right: 16.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://a.espncdn.com/combiner/i?img=/i/headshots/nba/players/full/2779.png"),
              ),
            ),
            new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(_name, style: Theme.of(context).textTheme.subhead),
                new Container(
                  margin: const EdgeInsets.only(top: 5.0),
                  child: new Text(text),
                )
              ],
            )
          ],
        ));
  }
}
