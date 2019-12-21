import 'package:flutter/material.dart';

class Cbox extends StatefulWidget {
  @override
  _Cbox createState() => _Cbox();
}

class _Cbox extends State<Cbox> {
  bool select = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // [Monday] checkbox
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Checkbox(
                value: select,
                onChanged: (bool value) {
                  setState(() {
                    select = value;
                  });
                },
              ),
            ],
          ),
          // [Tuesday] checkbox
        ],
      ),
    );
  }
}
