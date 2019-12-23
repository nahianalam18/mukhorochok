import 'package:flutter/material.dart';
import './checkbox.dart';

class Items extends StatelessWidget {
  final Function modder;
  Items([this.modder]);
  List<String> items = [
    'Kacchi Biriyani',
    'Chicken Roast',
    'Khichuri',
    'Egg Curry'
  ];
  List<String> pictures = const [
    'assets/kacchi.jfif',
    'assets/ckroast.jfif',
    'assets/khichuri.jfif',
    'assets/eggcurry.jfif'
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map((element) => Card(
                child: Column(
                  children: <Widget>[
                    Image.asset(pictures[index++]),
                    Text(element),
                    Cbox(foodName: element, mod: modder)
                  ],
                ),
              ))
          .toList(),
    );
  }
}
