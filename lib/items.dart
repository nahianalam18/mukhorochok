import 'package:flutter/material.dart';
import './checkbox.dart';

class Food {
  Food(this.name, this.price) {
    this.quantity = 0;
  }
  String name;
  int price;
  int quantity;
}

class Items extends StatelessWidget {
  final Function modder;
  Items(Function modFunc) : this.modder = modFunc;
  Food kacchiBir = new Food('Kacchi Biriyani', 500);
  Food ckRoast = new Food('Chicken Roast', 120);
  Food khichuri = new Food('Khichuri', 100);
  Food eggCurry = new Food('Egg Curry', 300);
  List<Food> foo = new List<Food>();
  // foo.add(kacchiBir);
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
                    //  Text(kacchiBir.price.toString()),
                    Cbox(foodName: element, mod: modder)
                  ],
                ),
              ))
          .toList(),
    );
  }
}
