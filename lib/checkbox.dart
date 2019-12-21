import 'package:flutter/material.dart';

class Cbox extends StatefulWidget {
  final String foodName;
  Cbox({this.foodName = 'food Item'});
  @override
  _Cbox createState() => _Cbox();
}

class _Cbox extends State<Cbox> {
  String name;
  @override
  void initState() {
    name = widget.foodName;
    super.initState();
  }

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
                    if (value == true) print(name);
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
