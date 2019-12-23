import 'package:flutter/material.dart';
import './order.dart';

class Cbox extends StatefulWidget {
  final String foodName;
  final Function mod;

  Cbox({this.foodName = 'item', this.mod});
  @override
  _Cbox createState() => _Cbox();
}

class _Cbox extends State<Cbox> {
  String name;
  Function itemMod;
  @override
  void initState() {
    name = widget.foodName;
    itemMod = widget.mod;
    super.initState();
  }

  bool select = false;
  @override
  Widget build(BuildContext context) {
    // Map<String, int> order = {
    //   'Kacchi Biriyani': 0,
    //   'Chicken Roast': 0,
    //   'Khichuri': 0,
    //   'Egg Curry': 0,
    // };
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
                    if (value == true) {
                      //   print(name);
                      itemMod(name, 0);
                    } else {
                      //    print(name);
                      itemMod(name, 1);
                    }
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
