import 'package:flutter/material.dart';

class Navigate extends StatefulWidget {
  @override
  _NavigateState createState() => _NavigateState();
}

class _NavigateState extends State<Navigate> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          RaisedButton(
            onPressed: () {},
            child: Text('Select'),
          ),
          RaisedButton(
            onPressed: () {},
            child: Text('Prev'),
          )
        ])
      ],
    ));
  }
}
